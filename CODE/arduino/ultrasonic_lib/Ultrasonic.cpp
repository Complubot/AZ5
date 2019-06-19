
#include "Ultrasonic.h"

Ultrasonic::Ultrasonic (int trigger, int echo){
  this->trigger = trigger;
  this->echo = echo;
  if (this->trigger!=this->echo){
    pinMode(this->trigger, OUTPUT);
    pinMode(this->echo, INPUT);
  }
}

Ultrasonic::Ultrasonic (int single_pin){
  this->trigger = single_pin;
  this->echo = single_pin;
}

int Ultrasonic::read(){
  if (this->trigger==this->echo){
    pinMode(this->trigger, OUTPUT);
  }
  digitalWrite(this->trigger, LOW);
  delayMicroseconds(2);
  digitalWrite(this->trigger, HIGH);
  delayMicroseconds(10);
  digitalWrite(this->trigger, LOW);
  if (this->trigger==this->echo){
    pinMode(this->echo, INPUT);
  }
  return int(pulseIn(this->echo, HIGH, 17492)/58);
}