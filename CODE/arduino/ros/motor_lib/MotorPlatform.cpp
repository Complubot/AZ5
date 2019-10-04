
#include "MotorPlatform.h"

bool isValidVel (const double &vel){
  return !isnan(vel) && abs(vel)<10;
}

MotorPlatform::MotorPlatform (double R, double LX, double LY, double MP) {
  this->R = R;
  this->L = LX+LY;
  this->MP = MP;
  this->current_time = millis();
  this->last_time = 0;
  Wire.begin();
  for (unsigned char motor = 0; motor < MotorPlatform::MOTORS; ++motor){
    this->motors[motor] = new Motor(MotorPlatform::FIRST_MOTOR+motor, this->MP);
  }
}

void MotorPlatform::setBrakes (int brake){
  for (unsigned char motor = 0; motor < MotorPlatform::MOTORS; ++motor){
    this->motors[motor]->setBrake(brake);
  }
}
void MotorPlatform::setBrakes (int brake1, int brake2, int brake3, int brake4){
  this->motors[0]->setBrake(brake1);
  this->motors[1]->setBrake(brake2);
  this->motors[2]->setBrake(brake3);
  this->motors[3]->setBrake(brake4);
}
void MotorPlatform::disable (){
  for (unsigned char motor = 0; motor < MotorPlatform::MOTORS; ++motor){
    this->motors[motor]->disable();
  }
}
bool MotorPlatform::isEnable () {
  bool is_enabled = true;
  for (unsigned char motor = 0; motor < MotorPlatform::MOTORS; ++motor){
    is_enabled &= this->motors[motor]->isEnable();
  }
  return is_enabled;
}

bool MotorPlatform::setPK (unsigned char P_K) {
  bool state = true;
  for (unsigned char motor = 0; motor < MotorPlatform::MOTORS; ++motor){
    this->motors[motor]->setPK(P_K);
    state &= (this->motors[motor]->getPK() == P_K);
  }
  return state;
}
bool MotorPlatform::setPK (unsigned char P_K1, unsigned char P_K2, unsigned char P_K3, unsigned char P_K4){
  this->motors[0]->setPK(P_K1);
  this->motors[1]->setPK(P_K2);
  this->motors[2]->setPK(P_K3);
  this->motors[3]->setPK(P_K4);
  return (this->motors[0]->getPK() == P_K1) && (this->motors[1]->getPK() == P_K2) && (this->motors[2]->getPK() == P_K3) && (this->motors[3]->getPK() == P_K4);
}
bool MotorPlatform::setPI (unsigned char P_I){
  bool state = true;
  for (unsigned char motor = 0; motor < MotorPlatform::MOTORS; ++motor){
    this->motors[motor]->setPI(P_I);
    state &= (this->motors[motor]->getPI() == P_I);
  }
  return state;
}
bool MotorPlatform::setPI (unsigned char P_I1, unsigned char P_I2, unsigned char P_I3, unsigned char P_I4){
  this->motors[0]->setPI(P_I1);
  this->motors[1]->setPI(P_I2);
  this->motors[2]->setPI(P_I3);
  this->motors[3]->setPI(P_I4);
  return (this->motors[0]->getPI() == P_I1) && (this->motors[1]->getPI() == P_I2) && (this->motors[2]->getPI() == P_I3) && (this->motors[3]->getPI() == P_I4);
}
bool MotorPlatform::setPD (unsigned char P_D){
  bool state = true;
  for (unsigned char motor = 0; motor < MotorPlatform::MOTORS; ++motor){
    this->motors[motor]->setPD(P_D);
    state &= (this->motors[motor]->getPD() == P_D);
  }
  return state;
}
bool MotorPlatform::setPD (unsigned char P_D1, unsigned char P_D2, unsigned char P_D3, unsigned char P_D4){
  this->motors[0]->setPD(P_D1);
  this->motors[1]->setPD(P_D2);
  this->motors[2]->setPD(P_D3);
  this->motors[3]->setPD(P_D4);
  return (this->motors[0]->getPD() == P_D1) && (this->motors[1]->getPD() == P_D2) && (this->motors[2]->getPD() == P_D3) && (this->motors[3]->getPD() == P_D4);
}

void MotorPlatform::setTargetVel (bool* motor_state, double vel){
  return this->setTargetVel(motor_state, vel,vel,vel,vel);
}
void MotorPlatform::setTargetVel (bool* motor_state, double x, double y, double theta){
  return this->setTargetVel (motor_state, 
                            ( x-y-this->L*theta)/this->R,
                            (-x-y-this->L*theta)/this->R,
                            (-x+y-this->L*theta)/this->R,
                            ( x+y-this->L*theta)/this->R);
}
void MotorPlatform::setTargetVel (bool* motor_state, double vel1, double vel2, double vel3, double vel4){
  this->motors[0]->setTargetVel(vel1);
  this->motors[1]->setTargetVel(vel2);
  this->motors[2]->setTargetVel(vel3);
  this->motors[3]->setTargetVel(vel4);
  motor_state[0] = (this->motors[0]->getTargetVel() == this->motors[0]->lastTargetVel());
  motor_state[1] = (this->motors[1]->getTargetVel() == this->motors[1]->lastTargetVel());
  motor_state[2] = (this->motors[2]->getTargetVel() == this->motors[2]->lastTargetVel());
  motor_state[3] = (this->motors[3]->getTargetVel() == this->motors[3]->lastTargetVel());
}

void MotorPlatform::getEncoders(double *encoders){
  for (unsigned char motor = 0; motor < MotorPlatform::MOTORS; ++motor){
    encoders[motor] = this->motors[motor]->getEncoder()*this->MP;
  }
}
void MotorPlatform::getOdometry(double *platform_vel, double *position){
  this->current_time = millis();
  this->time_increment = (this->current_time-this->last_time)/1000;
  this->last_time = millis();
  getPlatformVel(platform_vel);
  if (abs(this->time_increment) > 100){//Time between [2, 100) means motors are off
    for (char i = 0; i < 3; ++i){
      position[i] = this->pos[i];
    }
  }else{
    for (char i = 0; i < 3; ++i){
      this->pos[i] += (isnan(platform_vel[i])?0:platform_vel[i]*this->time_increment);
      position[i] = this->pos[i];
    }
  }
}

void MotorPlatform::getPlatformVel(double *platform_vel) {
  double wheel_vel[MotorPlatform::MOTORS];
  getMotorVel (wheel_vel);
  double pvx = ( wheel_vel[0]-wheel_vel[1]-wheel_vel[2]+wheel_vel[3])*this->R/4;
  double pvy = (-wheel_vel[0]-wheel_vel[1]+wheel_vel[2]+wheel_vel[3])*this->R/4;
  double pvz = ( wheel_vel[0]+wheel_vel[1]+wheel_vel[2]+wheel_vel[3])*this->R/(4*this->L);
  platform_vel[0] = (isValidVel(pvx)?pvx:0);
  platform_vel[1] = (isValidVel(pvy)?pvy:0);
  platform_vel[2] = (isValidVel(pvz)?pvz:0);
}
void MotorPlatform::getMotorVel(double *wheel_vel) {
  double encoders[MotorPlatform::MOTORS];
  this->getEncoders(encoders);
  if (abs(this->time_increment) > 100){//Time between [2, 100) means motors are off
    for (unsigned char motor = 0; motor < MotorPlatform::MOTORS; ++motor){
      wheel_vel[motor] = 0;
    }
  }else{
    for (unsigned char motor = 0; motor < MotorPlatform::MOTORS; ++motor){
      wheel_vel[motor] = (encoders[motor]-this->last_encoders[motor])/(this->time_increment);
      this->last_encoders[motor] = encoders[motor];
    }
  }
}

void MotorPlatform::resetMotors(bool *motor_state){
  for (unsigned char motor = 0; motor < MotorPlatform::MOTORS; ++motor){
    this->resetMotor(motor);
  }
  this->isAlive(motor_state);
}

void MotorPlatform::getCurrentMilliamps(int *amps){
  for (unsigned char motor = 0; motor < MotorPlatform::MOTORS; ++motor){
    amps[motor] = this->motors[motor]->getCurrentMilliamps();
  }
}

void MotorPlatform::isAlive (bool* motor_state){
  for (unsigned char motor = 0; motor < MotorPlatform::MOTORS; ++motor){
    motor_state[motor] = this->motors[motor]->isAlive();
  }
}
void MotorPlatform::checkMotors (bool* motor_state){
  this->isAlive(motor_state);
  for (unsigned char motor = 0; motor < MotorPlatform::MOTORS; ++motor){
    motor_state[motor] &= this->motors[motor]->checkMotor();
  }
}

bool MotorPlatform::resetMotor (unsigned char motor){
  this->motors[motor]->reset();
}