
#include "PID.h"
#include "Arduino.h"
#include "avr/io.h"
#include "avr/interrupt.h"

unsigned long last_time = time_m();
long last_encoder = 0;
int target_vel = 0;
char C_P_K = 0;
char C_P_I = 0;
char C_P_D = 0;
float P_K = 0;
float P_I = 0;
float P_D = 0;
char update_cicle = 10;

int acc_error = 0;
int last_error = 0;


void updatePID() {
  unsigned long current_time = time_m ();
  unsigned long time_elapsed = current_time - last_time;
  if (time_elapsed > update_cicle){
    long current_encoder = readEncoder();
    int current_vel = current_encoder - last_encoder;
    int error = target_vel - current_vel;
    int error_increment = error - last_error;
    acc_error += error;
    int i_pwm_vel = error*P_K+acc_error*P_I+error_increment*P_D;
    char c_pwm_vel = constrain(i_pwm_vel, -128, 128);
    updatePWM(c_pwm_vel);
    last_error = error;
    last_encoder = current_encoder; 
    last_time = current_time;
  }
}

void updateSimple(){
  updatePWM(target_vel);
}

int getTargetVel () {
  return target_vel;
}
char getPK (){
  return C_P_K;
}
char getPI (){
  return C_P_I;
}
char getPD (){
  return C_P_D;
}

void setTargetVel (int value) {
  target_vel = value;
}
void setPK (char value){
  P_K = value/10;
  C_P_K = value;
}
void setPI (char value){
  P_K = value/10;
  C_P_I = value;
}
void setPD (char value){
  P_K = value/10;
  C_P_D = value;
}

unsigned long  time_u () {
  return (isMotorActive()?(micros() >> 3):micros());
}

unsigned long time_m () {
  return (isMotorActive()?(millis() >> 3):millis());
}

unsigned long time_s () {
  return (isMotorActive()?(millis() >> 3):millis())/100;
}