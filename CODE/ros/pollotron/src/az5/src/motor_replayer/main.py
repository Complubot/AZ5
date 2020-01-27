import rospy
from geometry_msgs.msg import Twist
from az5.msg import simple_vel
import threading

class VelocityHolder ():
  def __init__(self):
    self.lock = threading.Lock()
    self.cmd_vel = Twist()
    self.cmd_vel.linear.x = 0
    self.cmd_vel.linear.y = 0
    self.cmd_vel.linear.z = 0
    self.cmd_vel.angular.x = 0
    self.cmd_vel.angular.y = 0
    self.cmd_vel.angular.z = 0

  def update_cmd_vel(self, data):
    with self.lock:
      self.cmd_vel = data

  def get_cmd_vel (self):
    with self.lock:
      return self.cmd_vel

class MotorReplayer (threading.Thread):
  def __init__(self, data_holder):
    threading.Thread.__init__(self)
    rospy.init_node('motor_replayer', anonymous=False)
    rospy.Subscriber('cmd_vel', Twist, self.callback_cmd_vel)
    self.data_holder = data_holder

  def run(self):
    rospy.spin()

  def callback_cmd_vel (self, data):
    self.data_holder.update_cmd_vel(data)



def main():
  pollotron_motors_pub = rospy.Publisher('pollotron_motors', simple_vel, queue_size=100)
  data_holder = VelocityHolder()
  motor_replayer = MotorReplayer(data_holder)
  motor_replayer.setDaemon(True)
  motor_replayer.start()
  rate = rospy.Rate(20)
  while not rospy.is_shutdown():
    cmd_target_velocity = data_holder.get_cmd_vel()
    simple_target_velocity = simple_vel()
    simple_target_velocity.x = cmd_target_velocity.linear.x
    simple_target_velocity.y = cmd_target_velocity.linear.y
    simple_target_velocity.theta = cmd_target_velocity.angular.z
    pollotron_motors_pub.publish(simple_target_velocity)
    rate.sleep()



if __name__ == '__main__':
    main()