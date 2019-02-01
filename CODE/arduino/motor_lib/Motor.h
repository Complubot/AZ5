#pragma once
#include <Arduino.h>

class Motor {
  public:
    void init();
    void setM1Speed(int speed);
    void setM2Speed(int speed);
    void setM3Speed(int speed);
    void setM4Speed(int speed);
    void setSpeeds(int m1Speed, int m2Speed, int m3Speed, int m4Speed);
    void setM1Brake(int brake);
    void setM2Brake(int brake);
    void setM3Brake(int brake);
    void setM4Brake(int brake);
    void setBrakes(int m1Brake, int m2Brake, int m3Brake, int m4Brake);
    unsigned int getM1CurrentMilliamps();
    unsigned int getM2CurrentMilliamps();
    unsigned int getM3CurrentMilliamps();
    unsigned int getM4CurrentMilliamps();
  private:
    unsigned char _INA1 = 22;
    unsigned char _INB1 = 26;
    unsigned char _PWM1 = 2;
    unsigned char _EN1DIAG1 = 10;
    unsigned char _CS1 = A0;
    unsigned char _INA2 = 23;
    unsigned char _INB2 = 27;
    unsigned char _PWM2 = 3;
    unsigned char _EN2DIAG2 = 10;
    unsigned char _CS2 = A1;
    unsigned char _INA3 = 24;
    unsigned char _INB3 = 28;
    unsigned char _PWM3 = 5;
    unsigned char _EN3DIAG3 = 10;
    unsigned char _CS3 = A2;
    unsigned char _INA4 = 25;
    unsigned char _INB4 = 29;
    unsigned char _PWM4 = 6;
    unsigned char _EN4DIAG4 = 10;
    unsigned char _CS4 = A3;
    void setBrake(int brake, unsigned char _PWM, unsigned char _INA, unsigned char _INB);
    void setSpeed(int speed, unsigned char _PWM, unsigned char _INA, unsigned char _INB);
};
