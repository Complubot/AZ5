#include "ros/ros.h"
#include "client_server/calculate.h"

#include <string>

const std::string kserver_name = "server";

bool calculateResponse(client_server::calculate::Request  &req, client_server::calculate::Response &res){
    ROS_INFO("RECIVED : %ld %s %ld", (long int)req.value1, req.operation.c_str() ,(long int)req.value2);
    if (!req.operation.compare("+")){
        res.result = req.value1 + req.value2;
        ROS_INFO("SUM");
    } else if (!req.operation.compare("-")){
        res.result = req.value1 - req.value2;
        ROS_INFO("RST");
    } else if (!req.operation.compare("*")){
        res.result = req.value1 * req.value2;
         ROS_INFO("MUL");
    } else if (!req.operation.compare("/")){
        if (req.value2 == 0){
            ROS_INFO("ZERO DIVISION");
            return false;
        }
        res.result = req.value1 / req.value2;
        ROS_INFO("DIV");
    } else {
        ROS_INFO("BAD_OPERATION");
        return false;
    }
    ROS_INFO("sending back result: %ld", (long int)res.result);
    return true;
}

int main(int argc, char **argv){
  ros::init(argc, argv, kserver_name);
  ros::NodeHandle node_handler;
  ros::ServiceServer service = node_handler.advertiseService(kserver_name, calculateResponse);
  ROS_INFO("Ready to calc!");
  ros::spin();

  return 0;
}
