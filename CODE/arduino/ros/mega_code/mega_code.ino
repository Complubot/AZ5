
#include <ros.h>
#include <az5/simple_vel.h>
#include <az5/motor_state.h>
#include "MotorPlatform.h"
#include "Ultrasonic.h"
#include "bumpers.h"

void onVelocityMsg(const az5::simple_vel& target_vel);

MotorPlatform motors {};
ros::NodeHandle nodeHandle;
az5::motor_state motor_state;
ros::Publisher motor_state_pub("motor_state", &motor_state);
ros::Subscriber<az5::simple_vel> sub("pollotron_motors", &onVelocityMsg);

void onVelocityMsg(const az5::simple_vel& target_vel){
  bool motor_state_bool [MotorPlatform::MOTORS];
  motors.setTargetVel(motor_state_bool, target_vel.x,target_vel.y,target_vel.theta);
  motor_state.M1 = motor_state_bool[0];
  motor_state.M2 = motor_state_bool[1];
  motor_state.M3 = motor_state_bool[2];
  motor_state.M4 = motor_state_bool[3];
  motor_state_pub.publish(&motor_state);
}

void setupRos () {
  nodeHandle.initNode();
  nodeHandle.subscribe(sub);
  nodeHandle.advertise(bumpers_pub);
  nodeHandle.advertise(motor_state_pub);
  setupBumpers();
  while (!nodeHandle.connected()){
    nodeHandle.spinOnce();
  }
}

void setup(){
  setupRos();
  setupBumpers();
  bool motor_state_bool [MotorPlatform::MOTORS];
  motors.checkMotors (motor_state_bool);
  motor_state.M1 = motor_state_bool[0];
  motor_state.M2 = motor_state_bool[1];
  motor_state.M3 = motor_state_bool[2];
  motor_state.M4 = motor_state_bool[3];
  motor_state_pub.publish(&motor_state);
}

void loop(){
  publishBumpers();
  
  double encoders [MotorPlatform::MOTORS];
  double wheel_vel [MotorPlatform::MOTORS];
  double vel [3];
  motors.getPlatformVel(encoders, wheel_vel, vel);
  
  nodeHandle.spinOnce();
}
