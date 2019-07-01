#include <ros/ros.h>
#include <tf/transform_listener.h>
#include <geometry_msgs/Twist.h>
#include <turtlesim/Spawn.h>
#include <utility>

std::pair<float, float> futureFollow (const tf::TransformListener &listener, const std::string &to, const std::string &from) {
  tf::StampedTransform transform;
  tf::StampedTransform transform_past;
  listener.lookupTransform(to, from, ros::Time(0), transform);
  listener.lookupTransform(to, from, ros::Time(0, 0.1), transform_past);
  return std::pair<float, float> ( transform.getOrigin().x() + (transform.getOrigin().x()- transform_past.getOrigin().x())*2,
                                        transform.getOrigin().y() + (transform.getOrigin().y()- transform_past.getOrigin().y())*2);
}

std::pair<float, float> simpleFollow (const tf::TransformListener &listener, const std::string &to, const std::string &from) {
  tf::StampedTransform transform;
  listener.lookupTransform(to, from, ros::Time(0), transform);
  return std::pair<float, float> (transform.getOrigin().x(), transform.getOrigin().y());
}

std::pair<float, float> pastFollow (const tf::TransformListener &listener, const std::string &to, const std::string &from) {
  tf::StampedTransform transform;
  ros::Time past = ros::Time::now() - ros::Duration(1.0);
  ros::Time now = ros::Time::now();
  listener.waitForTransform(to, now, from, past, "/world", ros::Duration(1.0));
  listener.lookupTransform(to, now, from, past, "/world", transform);
  return std::pair<float, float> (transform.getOrigin().x(), transform.getOrigin().y());
}

geometry_msgs::Twist polarVelocity (const std::pair<float, float> &pos) {
  geometry_msgs::Twist vel_msg;
  vel_msg.angular.z = 4.0 * atan2(pos.second, pos.first);
  vel_msg.linear.x = 0.5 * sqrt(pow(pos.first, 2) + pow(pos.second, 2));
  return vel_msg;
}

int main(int argc, char** argv){
  ros::init(argc, argv, "my_tf_listener");
  ros::NodeHandle node;
  ros::service::waitForService("spawn");
  ros::ServiceClient add_turtle = node.serviceClient<turtlesim::Spawn>("spawn");
  turtlesim::Spawn srv;
  add_turtle.call(srv);
  ros::Publisher turtle2_vel = node.advertise<geometry_msgs::Twist>("turtle2/cmd_vel", 10);
  ros::Publisher turtle1_vel = node.advertise<geometry_msgs::Twist>("turtle1/cmd_vel", 10);
  tf::TransformListener listener;
  ros::Rate rate(10.0);
  while (node.ok()){
    try{turtle2_vel.publish(polarVelocity(simpleFollow(listener, "/turtle2", "/turtle1")));}catch (tf::TransformException &ex) {}
    //try{turtle1_vel.publish(polarVelocity(pastFollow  (listener, "/turtle1", "/turtle2")));}catch (tf::TransformException &ex) {}
    rate.sleep();
  }
  return 0;
};