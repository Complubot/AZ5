

#include "ros/ros.h"
#include <geometry_msgs/Quaternion.h>
#include <tf/transform_broadcaster.h>
#include <sensor_msgs/JointState.h>
#include <nav_msgs/Odometry.h>

#include <az5/simple_odom.h>

ros::Publisher odom_pub;
ros::Time  current_time;
ros::Time  last_time;

ros::Time  previous_time;
ros::Publisher joint_pub;

void onOdom (const az5::simple_odom::ConstPtr& msg){
  static tf::TransformBroadcaster odom_broadcaster;

  current_time = ros::Time::now();
  geometry_msgs::Quaternion odom_quat = tf::createQuaternionMsgFromYaw(msg->z_pos);

  geometry_msgs::TransformStamped odom_trans;
  odom_trans.header.stamp = current_time;
  odom_trans.header.frame_id = "odom";
  odom_trans.child_frame_id = "base_link";

  odom_trans.transform.translation.x = msg->x_pos;
  odom_trans.transform.translation.y = msg->y_pos;
  odom_trans.transform.translation.z = 0;
  odom_trans.transform.rotation = odom_quat;
  odom_broadcaster.sendTransform(odom_trans);

  sensor_msgs::JointState joint_state;
  joint_state.header.stamp = current_time;
  joint_state.name.resize(4);
  joint_state.position.resize(4);
  joint_state.name[0] ="wheel_1";
  joint_state.position[0] =  0;
  joint_state.name[1] ="wheel_2";
  joint_state.position[1] =  0;
  joint_state.name[2] ="wheel_3";
  joint_state.position[2] =  0;
  joint_state.name[3] ="wheel_4";
  joint_state.position[3] =  0;
  joint_pub.publish(joint_state);

  nav_msgs::Odometry odom;
  odom.header.stamp = current_time;
  odom.header.frame_id = "odom";

  odom.pose.pose.position.x = msg->x_pos;
  odom.pose.pose.position.y = msg->y_pos;
  odom.pose.pose.position.z = 0;
  odom.pose.pose.orientation = odom_quat;

  odom.child_frame_id = "base_link";
  odom.twist.twist.linear.x = msg->x_vel;
  odom.twist.twist.linear.y = msg->y_vel;
  odom.twist.twist.angular.z = msg->z_vel;

  odom_pub.publish(odom);
  last_time = current_time;
}

int main (int argc, char ** argv) {
  ros::init(argc, argv, "odom_reciver");
  ros::NodeHandle n;
  current_time = ros::Time::now();
  last_time = ros::Time::now();
  previous_time = ros::Time::now();
  odom_pub = n.advertise<nav_msgs::Odometry>("odom", 50);
  joint_pub = n.advertise<sensor_msgs::JointState>("joint_states", 1);
  ros::Subscriber sub = n.subscribe("simple_odom", 1000, onOdom);
  ros::spin();
  return 0;
}