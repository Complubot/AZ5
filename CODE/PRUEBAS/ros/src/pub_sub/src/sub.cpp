
#include "ros/ros.h"
#include "std_msgs/String.h"
#include <sstream>
#include <string>

const std::string kpub_name = "pub";
const std::string ksub_name = "sub";
const std::string kmsg = "Helo World!";
const int kbuffer_size = 1000;

void recivedCallback(const std_msgs::String::ConstPtr& msg) {
  ROS_INFO("I heard: [%s]", msg->data.c_str());
}

int main(int argc, char **argv) {
    ros::init(argc, argv, ksub_name);
    ros::NodeHandle node_handler;
    ros::Subscriber sub = node_handler.subscribe(kpub_name, kbuffer_size, recivedCallback);
    ros::spin();
    return 0;
}