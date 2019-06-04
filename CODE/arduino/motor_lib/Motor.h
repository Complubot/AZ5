#pragma once
#include <Arduino.h>

class Motor {
  public:
    Motor (int INA, int INB,int PWM,int EN1DIAG,int CS);
    void init();
    void setSpeed(int speed);
    void setBrake(int brake);
    unsigned int getCurrentMilliamps();
    static const int UP = 255;
    static const int DOWN = -255;
    static const int STOP = 0;
  private:
    unsigned char _INA;
    unsigned char _INB;
    unsigned char _PWM;
    unsigned char _ENDIAG;
    unsigned char _CS;
};
