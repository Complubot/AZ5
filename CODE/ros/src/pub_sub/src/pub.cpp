
#include "ros/ros.h"
#include "std_msgs/String.h"
#include <sstream>
#include <string>

const std::string kpub_name = "pub";
const std::string ksub_name = "sub";
const std::string kmsg = "Helo World!";
const int kbuffer_size = 1000;

int main(int argc, char **argv) {
    ros::init(argc, argv, kpub_name);
    ros::NodeHandle node_handler;
    ros::Publisher pub = node_handler.advertise<std_msgs::String>(kpub_name, kbuffer_size);
    ros::Rate loop_rate(10);
    int count = 0;
    std_msgs::String msg;
    std::stringstream ss;
    while (ros::ok()) {
        ss << kmsg << count;
        msg.data = ss.str();
        ss.str(std::string());
        ROS_INFO("%s", msg.data.c_str());
        pub.publish(msg);
        ros::spinOnce();
        loop_rate.sleep();
        ++count;
    }
    return 0;
}