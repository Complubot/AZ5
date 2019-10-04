
#include "Arduino.h"
#include <ros.h>
#include <az5/bumpers.h>

#define LEFT_BUPMER 2
#define RIGHT_BUPMER 19
#define FRONT_BUPMER 18
#define BACK_BUPMER 3

az5::bumpers bumpers;
ros::Publisher bumpers_pub("bumpers", &bumpers);
void setupBumpers ();
void publishBumpers ();

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

void setupBumpers (){
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
}

void publishBumpers (){
  bumpers_pub.publish(&bumpers);
}
