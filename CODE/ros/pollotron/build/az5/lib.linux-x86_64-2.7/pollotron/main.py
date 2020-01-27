#!/usr/bin/env python3

import rospy
import time
from sensor_msgs.msg import Joy
from sensor_msgs.msg import LaserScan
from az5.msg import simple_vel
from pollotron.sender import Sender 

def main():
    rospy.init_node('pollotron_robot', anonymous=False)
    pub = rospy.Publisher('pollotron_velocity', simple_vel, queue_size=10)
    sender = Sender(pub, 10, 1)
    rospy.Subscriber('laser_filtered', LaserScan, sender.callback_scan)
    rospy.Subscriber('raw_controller_msg', Joy, sender.callback_controller)
    sender.start()
    rospy.spin()
    sender.running = False
    sender.join()

if __name__ == '__main__':
    main()