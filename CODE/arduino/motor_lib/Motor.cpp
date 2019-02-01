#include "Motor.h"

void Motor::init() {
  pinMode(_INA1,OUTPUT);
  pinMode(_INB1,OUTPUT);
  pinMode(_PWM1,OUTPUT);
  pinMode(_EN1DIAG1,INPUT);
  pinMode(_CS1,INPUT);
  pinMode(_INA2,OUTPUT);
  pinMode(_INB2,OUTPUT);
  pinMode(_PWM2,OUTPUT);
  pinMode(_EN2DIAG2,INPUT);
  pinMode(_CS2,INPUT);

  int eraser = 7;
  TCCR3B &= ~eraser;
  TCCR4B &= ~eraser;
  int prescaler = 2;
  TCCR3B |= prescaler;
  TCCR4B |= prescaler;
}

void Motor::setM1Speed(int speed) {
  setSpeed(speed, _PWM1, _INA1, _INB1);
}
void Motor::setM2Speed(int speed) {
  setSpeed(speed, _PWM2, _INA2, _INB2);
}
void Motor::setM3Speed(int speed) {
  setSpeed(speed, _PWM3, _INA3, _INB3);
}
void Motor::setM4Speed(int speed) {
  setSpeed(speed, _PWM4, _INA4, _INB4);
}

void Motor::setSpeed(int speed, unsigned char _PWM, unsigned char _INA, unsigned char _INB) {
  unsigned char reverse = 0;
  if (speed < 0) {
    speed = -speed;
    reverse = 1;
  }
  if (speed > 255){
    speed = 255;
  }
  analogWrite(_PWM,speed);
  if (speed == 0){
    digitalWrite(_INA,LOW);
    digitalWrite(_INB,LOW);
  }
  else if (reverse){
    digitalWrite(_INA,LOW);
    digitalWrite(_INB,HIGH);
  }
  else{
    digitalWrite(_INA,HIGH);
    digitalWrite(_INB,LOW);
  }
}

void Motor::setSpeeds(int m1Speed, int m2Speed, int m3Speed, int m4Speed) {
  setM1Speed(m1Speed);
  setM2Speed(m2Speed);
  setM3Speed(m3Speed);
  setM4Speed(m4Speed);
}

void Motor::setM1Brake(int speed) {
  setBrake(speed, _PWM1, _INA1, _INB1);
}
void Motor::setM2Brake(int speed) {
  setBrake(speed, _PWM2, _INA2, _INB2);
}
void Motor::setM3Brake(int speed) {
  setBrake(speed, _PWM3, _INA3, _INB3);
}
void Motor::setM4Brake(int speed) {
  setBrake(speed, _PWM4, _INA4, _INB4);
}

void Motor::setBrake(int brake, unsigned char _PWM, unsigned char _INA, unsigned char _INB){
  if (brake < 0){
    brake = -brake;
  }
  if (brake > 255){
    brake = 255;
  }
  digitalWrite(_INA, LOW);
  digitalWrite(_INB, LOW);

  analogWrite(_PWM,brake * 51 / 80);
}

void Motor::setBrakes(int m1Brake, int m2Brake, int m3Brake, int m4Brake){
  setM1Brake(m1Brake);
  setM2Brake(m2Brake);
  setM3Brake(m3Brake);
  setM4Brake(m4Brake);
}

unsigned int Motor::getM1CurrentMilliamps(){
  return analogRead(_CS1) * 34;
}

unsigned int Motor::getM2CurrentMilliamps(){
  return analogRead(_CS2) * 34;
}

unsigned int Motor::getM3CurrentMilliamps(){
  return analogRead(_CS3) * 34;
}

unsigned int Motor::getM4CurrentMilliamps(){
  return analogRead(_CS4) * 34;
}
