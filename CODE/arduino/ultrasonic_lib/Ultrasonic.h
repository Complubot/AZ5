#pragma once
#include <Arduino.h>

class Ultrasonic {
  public:
    Ultrasonic (int trigger, int echo);
    Ultrasonic (int single_pin);
    int read();
  private:
    int trigger;
    int echo;
};