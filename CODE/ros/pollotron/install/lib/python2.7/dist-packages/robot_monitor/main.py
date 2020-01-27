#!/usr/bin/env python3
import rospy
import time
import json
import threading
from math import atan2, pi
from sensor_msgs.msg import Joy
from az5.msg import ultrasounds
import bottle
import sys
from bottle import Bottle, response

class RosReader (threading.Thread):
    def __init__(self, sender):
        threading.Thread.__init__(self)
        rospy.init_node('pollotron_controller')
        rospy.Subscriber('raw_controller_msg', Joy, self.callback_controller)
        rospy.Subscriber('ultrasounds_raw', ultrasounds, self.callback_us)
        self.sender = sender

    def run(self):
        rospy.spin()
    
    def callback_us(self, data):
        self.sender.update_us(data)

    def callback_controller(self, data):
        self.sender.update_controller(data)

class WebSender ():
    _instance = None
    def __init__(self):
        rosReader = RosReader(self)
        rosReader.setDaemon(True)
        rosReader.start()
        self.controller_lock = threading.Lock()
        self.us_lock = threading.Lock()
        self.last_controller = Joy()
        for i in range(4):
            self.last_controller.axes.append(0)
        self.last_us = ultrasounds()
        for i in range( ultrasounds().length):
            self.last_us.measurements[i] = 0

    @classmethod
    def get_instance(self):
        if not self._instance:
            self._instance = self()
        return self._instance

    def update_controller(self, data):
        with self.controller_lock:
            self.last_controller = data

    def update_us(self, data):
        with self.us_lock:
            self.last_us = data

    def getValue(self):
        with self.us_lock and self.controller_lock:
            return {'controller' : {'RX' : self.last_controller.axes[2],
                                    'RY' : self.last_controller.axes[3],
                                    'LX' : self.last_controller.axes[0],
                                    'LY' : self.last_controller.axes[1]},
                    'us' : self.last_us.measurements}

entry_point = '/'
server = Bottle()

class EnableCors (object):
    name = 'enable_cors'
    api = 2
    def apply(self, fn, context):
        def enable_cors (*args, **kwargs):
            """Enable CORS support."""
            response.headers['Access-Control-Allow-Origin'] = '*'
            response.headers['Access-Control-Allow-Methods'] = 'PUT, GET, POST, DELETE, OPTIONS'
            response.headers['Access-Control-Allow-Headers'] = 'Origin, Accept, Content-Type, X-Requested-With, X-CSRF-Token'
            if bottle.request.method != 'OPTIONS':
                return fn(*args, **kwargs)
        return enable_cors

@server.route(entry_point, method=['OPTIONS'])
def cors_point_list():
    return {}
@server.route(entry_point, method=['GET'])
def server_callback():
    webSender = WebSender.get_instance()
    return webSender.getValue()


def main():
    server.install(EnableCors())
    server.run(host='0.0.0.0', port=9090, server='gunicorn', workers=1, threads=1,timeout=0)
    sys.exit(1)