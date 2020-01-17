
#define ROS 1

#if ROS//---------------------------------------------------------------------------------
#include <ros.h>
#include <az5/simple_odom.h>
#include <az5/simple_vel.h>
#include <az5/motor_state.h>
#include "bumpers.h"
void onVelocityMsg(const az5::simple_vel& target_vel);
#endif//----------------------------------------------------------------------------------

#include "MotorPlatform.h"
#include "Ultrasonic.h"

MotorPlatform motors {};
double vel [3];
double pos [3];
bool motor_state_bool [MotorPlatform::MOTORS];
double x = 0;
double y = 0;
double z = 0;
#define ODOM_UPDATE_RATE 1000
#define VEL_UPDATE_RATE 2000
#define CUT_VEL_UPDATE_RATE 100
unsigned long last_odom_t = millis();
unsigned long last_vel_t = millis();
bool force_vel_update = false;

#if ROS//---------------------------------------------------------------------------------
ros::NodeHandle nodeHandle;
az5::motor_state motor_state;
az5::simple_odom odom;
ros::Publisher motor_state_pub("motor_state", &motor_state);
ros::Publisher odom_pub("simple_odom", &odom);
ros::Subscriber<az5::simple_vel> vel_sub("pollotron_motors", &onVelocityMsg);

void onVelocityMsg(const az5::simple_vel& target_vel){
  x = target_vel.x;
  y = target_vel.y;
  z = target_vel.theta;
  force_vel_update = true;
}

void setupRos () {
  nodeHandle.initNode();
  nodeHandle.subscribe(vel_sub);
  nodeHandle.advertise(bumpers_pub);
  nodeHandle.advertise(motor_state_pub);
  nodeHandle.advertise(odom_pub);
  setupBumpers();
  while (!nodeHandle.connected()){
    nodeHandle.spinOnce();
  }
}
#endif//----------------------------------------------------------------------------------

void setup(){
  #if ROS//---------------------------------------------------------------------------------
  setupRos();
  setupBumpers();
  #else
  Serial.begin(115200);
  x = 0; y = 0; z = 0;
  #endif//----------------------------------------------------------------------------------
  motors.setTargetVel(motor_state_bool,0,0,0);
}

void loop(){
  //motors.checkMotors (motor_state_bool);
  #if ROS//---------------------------------------------------------------------------------
  if ((millis() - last_odom_t) > ODOM_UPDATE_RATE){
    last_odom_t = millis();
    motors.getOdometry (vel, pos);
    publishBumpers();
    odom.x_vel = vel[0];odom.y_vel = vel[1];odom.z_vel = vel[2];
    odom.x_pos = pos[0];odom.y_pos = pos[1];odom.z_pos = pos[2]; 
    odom_pub.publish(&odom);
    motor_state.M1 = motor_state_bool[0];motor_state.M2 = motor_state_bool[1];
    motor_state.M3 = motor_state_bool[2];motor_state.M4 = motor_state_bool[3];
    motor_state_pub.publish(&motor_state);
  }
  if ((((millis() - last_vel_t) > VEL_UPDATE_RATE)||force_vel_update)&&((millis() - last_vel_t) > CUT_VEL_UPDATE_RATE)){
    last_vel_t = millis();
    force_vel_update = false;
    motors.setTargetVel(motor_state_bool, x,y,z);
  }
  nodeHandle.spinOnce();
  #else//----------------------------------------------------------------------------------
  motors.getOdometry (vel, pos);
  motors.setTargetVel(motor_state_bool,x,y,z);
  Serial.println("Vel => X: "+String(vel[0],DEC)+" Y: "+String(vel[1],DEC)+" Z: "+String(vel[2],DEC));
  Serial.println("Pos => X: "+String(pos[0],DEC)+" Y: "+String(pos[1],DEC)+" Z: "+String(pos[2],DEC));
  Serial.println("--------------------------------------------------------------------------");
  delay(2000);
  #endif//----------------------------------------------------------------------------------
}
