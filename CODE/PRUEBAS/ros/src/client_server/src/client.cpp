#include "ros/ros.h"
#include "client_server/calculate.h"
#include <cstdlib>

const std::string kserver_name = "server";
const std::string kclient_name = "client";

int main(int argc, char **argv){
  ros::init(argc, argv, "add_two_ints_client");
  if (argc != 4){
    ROS_INFO("usage: int [+|-|*|/]");
    return 1;
  }

  ros::NodeHandle node_handler;
  ros::ServiceClient client = node_handler.serviceClient<client_server::calculate>(kserver_name);
  client_server::calculate srv;
  srv.request.value1 = atoll(argv[1]);
  srv.request.operation = std::string(argv[2]);
  srv.request.value2 = atoll(argv[3]);
  if (client.call(srv)){
    ROS_INFO("Result: %ld", (long int)srv.response.result);
  }
  else{
    ROS_ERROR("Failed to call %s", kserver_name.c_str());
    return 1;
  }
  return 0;
}