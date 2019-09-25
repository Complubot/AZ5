#include <string>
#include <ros/ros.h>
#include <sensor_msgs/JointState.h>
#include <tf/transform_broadcaster.h>
#include <nav_msgs/Odometry.h>

int main(int argc, char** argv) {
  ros::init(argc, argv, "state_publisher");
  ros::NodeHandle n;
  ros::Publisher joint_pub = n.advertise<sensor_msgs::JointState>("joint_states", 1);
  tf::TransformBroadcaster broadcaster;
  ros::Publisher odom_pub = n.advertise<nav_msgs::Odometry>("odom", 50);
  ros::Rate loop_rate(20);
  ros::Time  current_time;

  // message declarations
  geometry_msgs::TransformStamped odom_trans;
  sensor_msgs::JointState joint_state;
  odom_trans.header.frame_id = "odom";
  odom_trans.child_frame_id = "base_link";

  while (ros::ok()) {
    //update joint_state
    current_time = ros::Time::now();
    joint_state.header.stamp = current_time;
    joint_state.name.resize(4);
    joint_state.position.resize(4);
    joint_state.name[0] ="wheel_1";
    joint_state.position[0] = 0;
    joint_state.name[1] ="wheel_2";
    joint_state.position[1] = 0;
    joint_state.name[2] ="wheel_3";
    joint_state.position[2] = 0;
    joint_state.name[3] ="wheel_4";
    joint_state.position[3] = 0;


    odom_trans.header.stamp = current_time;
    odom_trans.transform.translation.x = 0;
    odom_trans.transform.translation.y = 0;
    odom_trans.transform.translation.z = 0;
    odom_trans.transform.rotation = tf::createQuaternionMsgFromYaw(0);

    nav_msgs::Odometry odom;
    odom.header.stamp = current_time;
    odom.header.frame_id = "odom";
    odom.pose.pose.position.x = 0;
    odom.pose.pose.position.y = 0;
    odom.pose.pose.position.z = 0;
    odom.pose.pose.orientation = tf::createQuaternionMsgFromYaw(0);;
    odom.child_frame_id = "base_link";
    odom.twist.twist.linear.x = 0;
    odom.twist.twist.linear.y = 0;
    odom.twist.twist.angular.z = 0;

    //send the joint state and transform
    joint_pub.publish(joint_state);
    broadcaster.sendTransform(odom_trans);
    odom_pub.publish(odom);

    // This will adjust as needed per iteration
    loop_rate.sleep();
  }
  return 0;
}