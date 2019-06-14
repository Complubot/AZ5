#!/usr/bin/env python3
import rospy
import asyncio
import time
import websockets
import json
import threading
from math import atan2, pi
from controller.msg import raw_controller

class RosReader (threading.Thread):
    def __init__(self, sender):
        threading.Thread.__init__(self)
        self.sender = sender
        rospy.init_node('pollotron_controller', anonymous=False)
        rospy.Subscriber('raw_controller_msg', raw_controller, self.callback)
    
    def run(self):
        rospy.spin()
    
    def callback(self, data):
        rospy.loginfo(data)
        self.sender.update(data)

class WebSender ():
    def __init__(self, dir, port):
        self.server = websockets.serve(self.server_callback, dir, port)
        self.lock = threading.Lock()
        self.last_recived = raw_controller()
        self.last_recived.RX = 0
        self.last_recived.RY = 0
        self.last_recived.LY = 0
        self.last_recived.LX = 0

    def run(self):
        self.running = True
        asyncio.get_event_loop().run_until_complete(self.server)
        asyncio.get_event_loop().run_forever()

    def stop(self):
        self.running = False

    def update(self, data):
        self.lock.acquire()
        try:
            self.last_recived = data
        finally:
            self.lock.release()
    
    async def server_callback(self, websocket, path):
        self.lock.acquire()
        try:
            msg = json.dumps({  'RX' : self.last_recived.RX,
                                'RY' : self.last_recived.RY,
                                'LX' : self.last_recived.LX,
                                'LY' : self.last_recived.LY})
        finally:
            self.lock.release()
        await websocket.send(msg)


def main():
    webSender = WebSender('localhost', 9090)
    rosReader = RosReader(webSender)
    rosReader.start()
    webSender.run()
    rosReader.join()

    
if __name__ == '__main__':
    main()