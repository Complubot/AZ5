import rospy
import time
from controller.msg import raw_controller, buttons, ultrasounds
import threading
from math import atan2

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
        x = map (self.controller.LX, -255, 255, -1, 1)
        y = map (self.controller.LY, -255, 255, -1, 1)
        #print(atan2(x, y))
        self.make_public (self.controller, 1)

    def make_public (self, speed, moderator):
        speed.RX = int(speed.RX / moderator) 
        speed.RY = int(speed.RY / moderator) 
        speed.LX = int(speed.LX / moderator) 
        speed.LY = int(speed.LY / moderator)  
        self.sender.publish(speed)

    def stop (self):
        msg = raw_controller()
        msg.RX = 0
        msg.RY = 0
        msg.LX = 0
        msg.LY = 0
        self.sender.publish(msg)


def map (value, in_min, in_max, out_min, out_max):
  return (float(value) - float(in_min)) * (float(out_max) - float(out_min)) / (float(in_max) - float(in_min)) + float(out_min)