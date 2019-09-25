

#pragma once

#include "Arduino.h"
#include "Motor.h"
#include "Wire.h"

class MotorPlatform {
  public:
    MotorPlatform (double R=0.152, double LX=0.13725 , double LY=0.185, double MP=0.00004);
    void setBrakes (int brake);
    void setBrakes (int brake1, int brake2, int brake3, int brake4);
    void disable ();
    bool isEnable ();

    bool setPK (unsigned char P_K);
    bool setPK (unsigned char P_K1, unsigned char P_K2, unsigned char P_K3, unsigned char P_K4);
    bool setPI (unsigned char P_I);
    bool setPI (unsigned char P_I1, unsigned char P_I2, unsigned char P_I3, unsigned char P_I4);
    bool setPD (unsigned char P_D);
    bool setPD (unsigned char P_D1, unsigned char P_D2, unsigned char P_D3, unsigned char P_D4);
    
    bool setTargetVel (int direction);
    bool setTargetVel (int x, int y, int theta);
    bool setTargetVel (int vel1, int vel2, int vel3, int vel4);

    void getEncoders(double *encoders);
    void getMotorVel(double *encoders, double *vel);
    void getPlatformVel(double *encoders, double *wheel_vel, double *platform_vel);
    bool resetMotors();

    unsigned int* getCurrentMilliamps();

    bool isAlive ();
    bool checkMotors ();

    static const unsigned char FIRST_MOTOR = 1;
    static const unsigned char MOTORS = 4;
    static const unsigned char LAST_MOTOR = MotorPlatform::FIRST_MOTOR+MotorPlatform::MOTORS;
  private:
    bool resetMotor (unsigned char encoder);
    Motor* motors [MotorPlatform::MOTORS];
    double R;
    double L;
    double MP;
};
