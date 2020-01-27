

#pragma once

#include "Arduino.h"
#include "Motor.h"
#include "Wire.h"

class MotorPlatform {
  public:
    MotorPlatform (double R=0.076, double LX=0.13725 , double LY=0.185, double MP=12000);
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
    
    void setTargetVel (bool* motor_state, double direction);
    void setTargetVel (bool* motor_state, double x, double y, double theta);
    void setTargetVel (bool* motor_state, double vel1, double vel2, double vel3, double vel4);

    void getOdometry(double *platform_vel, double *position);
    void resetMotors(bool *motor_state);

    void getCurrentMilliamps(int *amps);

    void isAlive (bool* motor_state);
    void checkMotors (bool* motor_state);

    static const unsigned char FIRST_MOTOR = 1;
    static const unsigned char MOTORS = 4;
    static const unsigned char LAST_MOTOR = MotorPlatform::FIRST_MOTOR+MotorPlatform::MOTORS;
  private:
    bool resetMotor (unsigned char encoder);
    void getEncoders(double *encoders);
    void getMotorVel(double *wheel_vel);
    void getPlatformVel(double *platform_vel);

    Motor* motors [MotorPlatform::MOTORS];
    double R;
    double L;
    double MP;

    double pos[3];

    double last_encoders [MotorPlatform::MOTORS];
    unsigned long current_time;
    unsigned long last_time;
    unsigned long time_increment;
};
