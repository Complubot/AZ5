#!/usr/bin/env python3
import rospy
from math import atan2, pi
from controller.msg import raw_controller

def callback(data):
    rospy.loginfo('X:'+str(data.LX)+' Y: '+str(data.LX)+' angle: '+str(atan2(data.RY/100, data.RX/100)))

def main():
    rospy.init_node('pollotron_controller', anonymous=False)
    rospy.Subscriber('raw_controller_msg', raw_controller, callback)
    rospy.spin()

    
if __name__ == '__main__':
    main()