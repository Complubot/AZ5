#include <ros.h>
#include <std_msgs/Empty.h>

ros::NodeHandle node_handler;

void recivedCallback( const std_msgs::Empty& toggle_msg){
  digitalWrite(13, HIGH-digitalRead(13));
}

ros::Subscriber<std_msgs::Empty> sub("sub", &recivedCallback );

void setup()
{
  pinMode(13, OUTPUT);
  node_handler.initNode();
  node_handler.subscribe(sub);
}

void loop(){
  node_handler.spinOnce();
  delay(1);
}
