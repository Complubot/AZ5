#include "MotorPlatform.h"

void MotorPlatform::init() {
  for (const auto &motor : this->motors){
    motor->init();
  }
  int eraser = 7;
  TCCR3B &= ~eraser;
  TCCR4B &= ~eraser;
  int prescaler = 2;
  TCCR3B |= prescaler;
  TCCR4B |= prescaler;
}

void MotorPlatform::setSpeed(int speed, int motor) {
  this->motors[motor]->setSpeed(speed);
}

void MotorPlatform::setSpeeds(int m1Speed, int m2Speed, int m3Speed, int m4Speed) {
  this->motors[MotorPlatform::MOTOR1]->setSpeed(m1Speed);
  this->motors[MotorPlatform::MOTOR2]->setSpeed(m2Speed);
  this->motors[MotorPlatform::MOTOR3]->setSpeed(m3Speed);
  this->motors[MotorPlatform::MOTOR4]->setSpeed(m4Speed);
}

void MotorPlatform::setBrake(int speed, int motor) {
  this->motors[motor]->setBrake(speed);
}

void MotorPlatform::setBrakes(int m1Brake, int m2Brake, int m3Brake, int m4Brake){
  this->motors[MotorPlatform::MOTOR1]->setBrake(m1Brake);
  this->motors[MotorPlatform::MOTOR2]->setBrake(m2Brake);
  this->motors[MotorPlatform::MOTOR3]->setBrake(m3Brake);
  this->motors[MotorPlatform::MOTOR4]->setBrake(m4Brake);
}

void MotorPlatform::go (int direction){
  for (int i = 0; i < MotorPlatform::MOTOR_LEN; ++i){
    motors[i]->setSpeed(this->directions[i][direction]);
  }
}

void MotorPlatform::go (int x, int y, int theta){
  /*this->setSpeeds(this->255*(x-y-theta*255),
                  this->255*(x+y+theta*255),
                  this->255*(x+y-theta*255),
                  this->255*(x-y+theta*255))*/
}
