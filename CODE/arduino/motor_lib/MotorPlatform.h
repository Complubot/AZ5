#pragma once
#include <Arduino.h>
#include "Motor.h"

class MotorPlatform {
  public:
    void init();
    void setSpeed(int speed, int motor);
    void setSpeeds(int m1Speed, int m2Speed, int m3Speed, int m4Speed);
    void setBrake(int brake, int motor);
    void setBrakes(int m1Brake, int m2Brake, int m3Brake, int m4Brake);
    unsigned int getM1CurrentMilliamps(int motor);
    void go (int direction);
    void go (int x, int y, int theta);
    static const int FORWARD = 0;
    static const int UP_RIGHT = 1;
    static const int RIGHT = 2;
    static const int DOWN_RIGHT = 3;
    static const int BACKWARDS = 4;
    static const int DOWN_LEFT = 5;
    static const int LEFT = 6;
    static const int UP_LEFT = 7;
    static const int MOTOR1 = 0;
    static const int MOTOR2 = 1;
    static const int MOTOR3 = 2;
    static const int MOTOR4 = 3;
    static const int MOTOR_LEN = 4;
    static const int DIRECTION_LEN = 9;
  private:
    Motor* motors [MotorPlatform::MOTOR_LEN] = {
      new Motor(23,24,2,22,A0), 
      new Motor(26,27,3,25,A1), 
      new Motor(29,30,5,28,A2), 
      new Motor(32,33,6,31,A3)
    };
    const int directions [MotorPlatform::MOTOR_LEN][MotorPlatform::DIRECTION_LEN] = {
      {Motor::UP, Motor::STOP, Motor::DOWN, Motor::DOWN, Motor::DOWN, Motor::STOP, Motor::UP, Motor::UP},
      {Motor::DOWN, Motor::DOWN, Motor::DOWN, Motor::STOP, Motor::UP, Motor::UP, Motor::UP, Motor::STOP},
      {Motor::DOWN, Motor::STOP, Motor::UP, Motor::UP, Motor::UP, Motor::STOP, Motor::DOWN, Motor::DOWN},
      {Motor::UP, Motor::UP, Motor::UP, Motor::STOP, Motor::DOWN, Motor::DOWN, Motor::DOWN, Motor::STOP}
    };
};
