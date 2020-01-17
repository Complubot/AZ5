#!/usr/bin/env python3

import rospy
import time
from controller.msg import raw_controller
from controller.msg import ultrasounds
from pollotron.sender import Sender 

def main():
    rospy.init_node('pollotron_robot', anonymous=False)
    pub = rospy.Publisher('pollotron_velocity', raw_controller, queue_size=10)
    sender = Sender(pub, 10, 1)
    rospy.Subscriber('raw_controller_msg', raw_controller, sender.callback_controller)
    rospy.Subscriber('max_velocity', ultrasounds, sender.callback_us)
    sender.start()
    rospy.spin()
    sender.running = False
    sender.join()

if __name__ == '__main__':
    main.main()