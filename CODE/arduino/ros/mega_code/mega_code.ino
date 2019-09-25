
//#include <ros.h>
//#include <az5/simple_vel.h>

#include "MotorPlatform.h"
#include "Ultrasonic.h"
#include "bumpers.h"

MotorPlatform motors {};

/*
ros::NodeHandle nodeHandle;

void onRawControllerMessage(const az5::simple_vel& raw_message){
  //SET VEL
}

ros::Subscriber<az5::simple_vel> sub("pollotron_velocity", &onRawControllerMessage);

void setupRos () {
  nodeHandle.initNode();
  nodeHandle.subscribe(sub);
  nodeHandle.advertise(bumpers_pub);
  setupBumpers();
  while (!nodeHandle.connected()){
    nodeHandle.spinOnce();
  }
}
*/
void setup(){
  //setupRos();
  //setupBumpers();
  Serial.begin(115200);
  Serial.println(motors.checkMotors ());
  Serial.println(motors.setPK(2));
  Serial.println(motors.setTargetVel(10,0,0));  
}


unsigned long t = millis();

void loop(){
  //nodeHandle.spinOnce();
  //publishBumpers();
  t = millis();
  double encoders [MotorPlatform::MOTORS];
  double wheel_vel [MotorPlatform::MOTORS];
  double vel [3];
  motors.getPlatformVel(encoders, wheel_vel, vel);
  for (unsigned char motor = 0; motor < MotorPlatform::MOTORS; ++motor){
    Serial.print(motor);
    Serial.print(": ");
    Serial.println(encoders[motor]*100);
  }
  for (unsigned char motor = 0; motor < MotorPlatform::MOTORS; ++motor){
    Serial.print(motor);
    Serial.print(": ");
    Serial.println(wheel_vel[motor]*100);
  }
  for (unsigned char i = 0; i < 3; ++i){
    Serial.print(vel[i]*100);
    Serial.print("; ");
  }
  Serial.println("\n-----------");
  Serial.println(millis()-t);
  Serial.println("-----------");
  delay(1000);
}
