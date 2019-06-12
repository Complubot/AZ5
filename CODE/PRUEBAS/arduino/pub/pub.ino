#include <ros.h>
#include <std_msgs/String.h>

std_msgs::String msg;
char hello[13] = "hello world!";
ros::NodeHandle node_handler;
ros::Publisher pub("pub", &msg);

void setup(){
  node_handler.initNode();
  node_handler.advertise(pub);
}

void loop(){
  msg.data = hello;
  pub.publish( &msg );
  node_handler.spinOnce();
  delay(1000);
}
