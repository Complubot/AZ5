import rospy
import time
from controller.msg import raw_controller, buttons, ultrasounds
import threading

class Sender(threading.Thread):
    def __init__(self, sender, interval, safe_time):
        threading.Thread.__init__(self)
        self.sender = sender
        self.running = True
        self.rate = rospy.Rate(interval)
        self.controller = raw_controller()
        self.last_controller = time.time()
        self.last_us = time.time()
        self.us = ultrasounds()
        self.safe_time = safe_time

    def run(self):
        while self.running and not rospy.is_shutdown():
            if ((time.time() - self.last_controller) < self.safe_time) and ((time.time() - self.last_us) < self.safe_time):
                self.action()
            else:
                self.stop()
            self.rate.sleep()
        self.running = False
        print('sender down')
        if not self.running:
            rospy.signal_shutdown('user manual shutdown')

    def callback_us (self, data):
        self.us = data
        self.last_us = time.time()

    def callback_controller (self, data):
        self.controller = data
        self.last_controller = time.time()

    def action (self):
        self.sender.publish(self.controller)

    def stop (self):
        msg = raw_controller()
        msg.RX = 0
        msg.RY = 0
        msg.LX = 0
        msg.LY = 0
        self.sender.publish(msg)