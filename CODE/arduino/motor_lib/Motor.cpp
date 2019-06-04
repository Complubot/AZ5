
#include "Motor.h"
#include <Arduino.h>

Motor::Motor (int INA, int INB,int PWM,int ENDIAG,int CS){
  this->_INA = INA;
  this->_INB = INB;
  this->_PWM = PWM;
  this->_ENDIAG = ENDIAG;
  this->_CS = CS;
}

void Motor::init(){
  pinMode(_INA,OUTPUT);
  pinMode(_INB,OUTPUT);
  pinMode(_PWM,OUTPUT);
  pinMode(_ENDIAG,INPUT);
  pinMode(_CS,INPUT);
}

void Motor::setSpeed(int speed){
  unsigned char reverse = 0;
  if (speed < 0) {
    speed = -speed;
    reverse = 1;
  }
  if (speed > 255){
    speed = 255;
  }
  analogWrite(this->_PWM,speed);
  if (speed == 0){
    digitalWrite(this->_INA,LOW);
    digitalWrite(this->_INB,LOW);
  }
  else if (reverse){
    digitalWrite(this->_INA,LOW);
    digitalWrite(this->_INB,HIGH);
  }
  else{
    digitalWrite(this->_INA,HIGH);
    digitalWrite(this->_INB,LOW);
  }
}

void Motor::setBrake(int brake){
  if (brake < 0){
    brake = -brake;
  }
  if (brake > 255){
    brake = 255;
  }
  digitalWrite(this->_INA, LOW);
  digitalWrite(this->_INB, LOW);
  analogWrite(this->_PWM,brake * 51 / 80);
}

unsigned int Motor::getCurrentMilliamps(){
  return analogRead(this->_CS) * 34;
}