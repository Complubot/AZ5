
import rospy
from controller.msg import raw_controller
import threading

class Sender(threading.Thread):
    def __init__(self, emiter, interval):
        threading.Thread.__init__(self)
        rospy.init_node('raw_controller_reader', anonymous=False)
        self.emiter = emiter
        self.running = True
        self.pub = rospy.Publisher('raw_controller_msg', raw_controller, queue_size=10)
        self.rate = rospy.Rate(interval)

    def run(self):
        while self.running and not rospy.is_shutdown():
            msg = self.emiter.getValues()
            rospy.loginfo(msg)
            self.pub.publish(msg)
            self.rate.sleep()
        self.running = False
        print('sender down')
        if not self.running:
            rospy.signal_shutdown('user manual shutdown')

