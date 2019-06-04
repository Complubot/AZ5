
#include "Ultrasonic.h"

Ultrasonic::Ultrasonic (int trigger, int echo){
  this->trigger = trigger;
  this->echo = echo;
  if (trigger!=echo){
    pinMode(trigger, OUTPUT);
    pinMode(echo, INPUT);
  }
}

int Ultrasonic::read(){
  if (trigger==echo){
    pinMode(trigger, OUTPUT);
  }
  digitalWrite(trigger, LOW);
  delayMicroseconds(2);
  digitalWrite(trigger, HIGH);
  delayMicroseconds(10);
  digitalWrite(trigger, LOW);
  if (trigger==echo){
    pinMode(echo, INPUT);
  }
  return int(pulseIn(echoPin, HIGH)/58);
}