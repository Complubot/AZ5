#include <ros.h>
#include <controller/raw_controller.h>
#include "MotorPlatform.h"

MotorPlatform pollotron {};
ros::NodeHandle nodeHandle;

void onRawControllerMessage( const controller::raw_controller& raw_message){
  pollotron.go(raw_message.LX, raw_message.LY, raw_message.RX);
}

ros::Subscriber<controller::raw_controller> sub("raw_controller_msg", &onRawControllerMessage );

void setup(){
  nodeHandle.initNode();
  nodeHandle.subscribe(sub);
  pollotron.init();
  while (!nodeHandle.connected()){
    nodeHandle.spinOnce();
  }
}

void loop(){
  nodeHandle.spinOnce();
  delay(1);
}
