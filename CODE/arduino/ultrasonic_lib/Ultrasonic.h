#pragma once
#include <Arduino.h>

class Ultrasonic {
  public:
    Ultrasonic (int trigger, int echo);
    int read();
  private:
    int trigger;
    int echo;
}