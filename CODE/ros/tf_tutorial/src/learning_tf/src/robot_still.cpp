#include <string>
#include <ros/ros.h>
#include <sensor_msgs/JointState.h>
#include <tf/transform_broadcaster.h>

int main(int argc, char** argv) {
  ros::init(argc, argv, "state_publisher");
  ros::NodeHandle n;
  ros::Publisher joint_pub = n.advertise<sensor_msgs::JointState>("joint_states", 1);
  tf::TransformBroadcaster broadcaster;
  ros::Rate loop_rate(30);

  const double degree = M_PI/180;

  // robot state
  double robot_angle=0;
  double wheel_angle=0;

  // message declarations
  geometry_msgs::TransformStamped odom_trans;
  sensor_msgs::JointState joint_state;
  odom_trans.header.frame_id = "odom";
  odom_trans.child_frame_id = "base_link";

  while (ros::ok()) {
    //update joint_state
    joint_state.header.stamp = ros::Time::now();
    joint_state.name.resize(4);
    joint_state.position.resize(4);
    joint_state.name[0] ="wheel_1";
    joint_state.position[0] = wheel_angle;
    joint_state.name[1] ="wheel_2";
    joint_state.position[1] = wheel_angle;
    joint_state.name[2] ="wheel_3";
    joint_state.position[2] = wheel_angle;
    joint_state.name[3] ="wheel_4";
    joint_state.position[3] = wheel_angle;


    // update transform
    // (moving in a circle with radius=2)
    odom_trans.header.stamp = ros::Time::now();
    odom_trans.transform.translation.x = cos(robot_angle)*2;
    odom_trans.transform.translation.y = sin(robot_angle)*2;
    odom_trans.transform.translation.z = 0;
    odom_trans.transform.rotation = tf::createQuaternionMsgFromYaw(robot_angle+M_PI/2);

    //send the joint state and transform
    joint_pub.publish(joint_state);
    broadcaster.sendTransform(odom_trans);

    // This will adjust as needed per iteration
    loop_rate.sleep();
  }
  return 0;
}