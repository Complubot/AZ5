
import rospy
import time
from az5.msg import simple_vel
from sensor_msgs.msg import Joy
import threading
from math import atan2, pi, ceil, tan
from filters.disperse_filter import DisperseFilter

class Sender(threading.Thread):
    def __init__(self, sender, interval, safe_time):
        threading.Thread.__init__(self)
        self.sender = sender
        self.running = True
        self.rate = rospy.Rate(interval)
        self.controller = None
        self.scan = []
        self.last_controller = time.time()
        self.safe_time = safe_time
        self.stop()

    def run(self):
        while self.running and not rospy.is_shutdown():
            if (time.time() - self.last_controller) < self.safe_time:
                if self.controller and self.scan:
                    self.action()
            else:
                self.stop()
            self.rate.sleep()
        self.running = False
        print('sender down')
        if not self.running:
            rospy.signal_shutdown('user manual shutdown')

    def callback_controller (self, data):
        self.controller = data
        self.last_controller = time.time()

    def callback_scan (self, data):
        self.scan = data

    def action (self):
        speed = simple_vel()
        speed.x = self.controller.axes[0]
        speed.y = self.controller.axes[1]
        speed.theta = self.controller.axes[2]
        if speed.x != 0 or speed.y != 0:
            length = len(self.scan.ranges)
            angle = -atan2(map(speed.x, -255, 255, -1, 1),map(speed.y, -255, 255, -1, 1))
            mast_angle = atan2(4.2,18.0) # Angle in whih the mastile is
            mast_start_index = int((map(mast_angle, -pi, pi, length, 0)+length/2) % length)
            mast_end_index = int((map(-mast_angle, -pi, pi, length, 0)+length/2) % length)
            if (angle < (mast_angle)) and (angle > (-mast_angle)):
                print('mast')
                self.make_public (speed)
            else:
                dir_index = int((map(angle, -pi, pi, length, 0)+length/2) % length)
                dir_value = self.scan.ranges[dir_index]
                if dir_value == 0:
                    lookup_angle = pi/2
                else:
                    lookup_angle = min(max((pi/2) * 1/dir_value, pi/2),pi*0.9)
                lookup_start_index = int((map(angle+lookup_angle, -pi, pi, length, 0)+length/2) % length)
                lookup_end_index = int((map(angle-lookup_angle, -pi, pi, length, 0)+length/2) % length)
                distance = float('inf')
                acc = 0
                count = 0
                print(lookup_angle)
                for i in range(lookup_start_index,lookup_end_index):
                    if (i < mast_start_index) and (i > mast_end_index):
                        if self.scan.ranges[i]!=0:
                            acc = self.scan.ranges[i]
                            count += 1
                            if (self.scan.ranges[i] < distance):
                                distance = self.scan.ranges[i]
                if count > 0:
                    distance = distance*0.8 + (acc/count)*0.2
                if (distance < 0.50) and (distance != 0):
                    print('stop: '+str(distance))
                    self.stop()
                else:
                    self.make_public (speed)
        else:
            self.stop()

    def make_public (self, speed, moderator=1):
        speed.x = int(speed.x / moderator) 
        speed.y = int(speed.y / moderator) 
        speed.theta = int(speed.theta / moderator)
        self.sender.publish(speed)

    def stop (self):
        msg = simple_vel()
        msg.x = 0
        msg.y = 0
        msg.theta = 0
        self.sender.publish(msg)


def map (value, in_min, in_max, out_min, out_max):
  return (float(value) - float(in_min)) * (float(out_max) - float(out_min)) / (float(in_max) - float(in_min)) + float(out_min)
