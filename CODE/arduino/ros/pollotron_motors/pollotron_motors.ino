#include <ros.h>
#include <controller/raw_controller.h>
#include <controller/bumpers.h>
#include "MotorPlatform.h"

#define LEFT_BUPMER 18
#define RIGHT_BUPMER 20
#define FRONT_BUPMER 21
#define BACK_BUPMER 19

MotorPlatform pollotron {};
controller::bumpers bumpers;
ros::NodeHandle nodeHandle;

void onRawControllerMessage(const controller::raw_controller& raw_message){
  pollotron.go(raw_message.LX, raw_message.LY, raw_message.RX);
}

ros::Subscriber<controller::raw_controller> sub("pollotron_velocity", &onRawControllerMessage);
ros::Publisher pub("bumpers", &bumpers);

void onLeftBumper (){
  bumpers.LEFT = digitalRead(LEFT_BUPMER);
}
void onRightBumper (){
  bumpers.RIGHT = digitalRead(RIGHT_BUPMER);
}
void onFrontumper (){
  bumpers.FRONT = digitalRead(FRONT_BUPMER);
}
void onBackBumper (){
  bumpers.BACK = digitalRead(BACK_BUPMER);
}

void setup(){
  pinMode(LEFT_BUPMER, INPUT_PULLUP);
  pinMode(RIGHT_BUPMER, INPUT_PULLUP);
  pinMode(FRONT_BUPMER, INPUT_PULLUP);
  pinMode(BACK_BUPMER, INPUT_PULLUP);
  bumpers.LEFT = digitalRead(LEFT_BUPMER);
  bumpers.RIGHT = digitalRead(RIGHT_BUPMER);
  bumpers.FRONT = digitalRead(FRONT_BUPMER);
  bumpers.BACK = digitalRead(BACK_BUPMER);
  pinMode(RIGHT_BUPMER, INPUT_PULLUP);
  pinMode(FRONT_BUPMER, INPUT_PULLUP);
  pinMode(BACK_BUPMER, INPUT_PULLUP);
  attachInterrupt(digitalPinToInterrupt(LEFT_BUPMER), onLeftBumper, CHANGE);
  attachInterrupt(digitalPinToInterrupt(RIGHT_BUPMER), onRightBumper, CHANGE);
  attachInterrupt(digitalPinToInterrupt(FRONT_BUPMER), onFrontumper, CHANGE);
  attachInterrupt(digitalPinToInterrupt(BACK_BUPMER), onBackBumper, CHANGE);
  nodeHandle.initNode();
  nodeHandle.subscribe(sub);
  nodeHandle.advertise(pub);
  pollotron.init();
  while (!nodeHandle.connected()){
    nodeHandle.spinOnce();
  }
}

void loop(){
  nodeHandle.spinOnce();
  pub.publish(&bumpers);
}
