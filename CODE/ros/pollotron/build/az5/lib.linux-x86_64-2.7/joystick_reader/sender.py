
import rospy
from sensor_msgs.msg import Joy
from geometry_msgs.msg import Quaternion
from geometry_msgs.msg import QuaternionStamped
import threading

class Sender(threading.Thread):
    def __init__(self, emiter, interval):
        threading.Thread.__init__(self)
        rospy.init_node('raw_controller_reader', anonymous=False)
        self.emiter = emiter
        self.running = True
        self.controller_pub = rospy.Publisher('raw_controller_msg', Joy, queue_size=10)
        self.quaternion_pub = rospy.Publisher('raw_velocity', QuaternionStamped, queue_size=10)
        self.rate = rospy.Rate(interval)

    def run(self):
        while self.running and not rospy.is_shutdown():
            msg = self.emiter.getValues()
            quaternion = Quaternion()
            quaternion.x = map (msg.axes[0], -255, 255, 1, -1)
            quaternion.y = map (msg.axes[1], -255, 255, 1, -1)
            quaternion.z = 0
            quaternion.w = msg.axes[2]
            quaternionStamped = QuaternionStamped()
            quaternionStamped.quaternion = quaternion
            quaternionStamped.header.stamp = rospy.Time.now()
            quaternionStamped.header.frame_id = 'base_link'
            self.controller_pub.publish(msg)
            self.quaternion_pub.publish(quaternionStamped)
            self.rate.sleep()
        self.running = False
        print('sender down')
        if not self.running:
            rospy.signal_shutdown('user manual shutdown')

def map (value, in_min, in_max, out_min, out_max):
  return (float(value) - float(in_min)) * (float(out_max) - float(out_min)) / (float(in_max) - float(in_min)) + float(out_min)

