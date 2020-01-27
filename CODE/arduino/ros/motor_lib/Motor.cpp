#include "Motor.h"


Motor::Motor (unsigned char direction, double MP){
  this->direction = direction;
  this->target_vel = 0;
  this->P_K = 0;
  this->P_I = 0;
  this->P_D = 0;
  this->MP = MP;
}

void Motor::setBrake(int brake){
  //POR IMPLEMENTAR
}
void Motor::disable (){
  //POR IMPLEMENTAR
}
bool Motor::isEnable (){
  //POR IMPLEMENTAR
  return 0;
}

void Motor::setPK (unsigned char P_K){
  this->P_K = P_K;
  return this->sendChar(Motor::SET_PK, P_K);
}
void Motor::setPI (unsigned char P_I){
  this->P_I = P_I;
  return this->sendChar(Motor::SET_PI, P_I);
}
void Motor::setPD (unsigned char P_D){
  this->P_D = P_D;
  return this->sendChar(Motor::SET_PD, P_D);
}

unsigned char Motor::getPK (){
  return this->readChar(Motor::GET_PK);
}
unsigned char Motor::getPI (){
  return this->readChar(Motor::GET_PI);
}
unsigned char Motor::getPD (){
  return this->readChar(Motor::GET_PD);
}
void Motor::setTargetVel (double vel) {
  this->target_vel = constrain(vel, -1, 1)*this->MP;
  return this->sendInt(Motor::SET_VEL, this->target_vel);
}
int Motor::getTargetVel (){
  return this->readInt(Motor::GET_VEL);
}
int Motor::lastTargetVel(){
  return this->target_vel;
}

long Motor::getEncoder(){
  return this->readLong(Motor::ENCODER_READ);
}
void Motor::setEncoder(long encoder){
  //POR IMPLEMENTAR
}

int Motor::getCurrentMilliamps(){
  return this->readInt(Motor::GET_CS);
}

bool Motor::isAlive(){
  return this->checkVersion() && this->checkDirection();
}
bool Motor::checkMotor (){
  return this->isAlive() && this->checkName();
}
void Motor::reset (){
  this->setPK(this->P_K);
  this->setPI(this->P_I);
  this->setPD(this->P_D);
}

bool Motor::checkDirection (){
  return this->readChar(Motor::DIRECTION_READ)==this->direction;
}
bool Motor::checkVersion (){
  return this->readChar(Motor::VERSION_READ)==Motor::VERSION;
}
bool Motor::checkName (){
  sendChar(Motor::CHANGE_MODE, Motor::BOARD_TYPE);
  Wire.requestFrom(this->direction, Motor::MAX_INDEX);
  if (Wire.available() == Motor::MAX_INDEX) {
    for (int i = 0; i < Motor::MAX_INDEX; ++i){
      char received_char = Wire.read();
      if (BOARD_TYPE_STR[i] != received_char){
        return false;
      }
    }
  }else{
    return false;
  }
  return true;
}

void Motor::sendChar (const unsigned char type, unsigned char msg){
  Wire.beginTransmission(this->direction);
  Wire.write(type);
  Wire.write(msg);
  Wire.endTransmission();
}
void Motor::sendInt (const unsigned char type, int msg){
  Wire.beginTransmission(this->direction);
  Wire.write(type);
  Wire.write((int)(msg >> 8));
  Wire.write((int)(msg));
  Wire.endTransmission();
}
unsigned char Motor::readChar (const unsigned char to_read){
  this->sendChar(Motor::CHANGE_MODE, to_read);
  Wire.requestFrom((int)this->direction, 1);
  return Wire.read();
}
int Motor::readInt (const unsigned char to_read){
  this->sendChar(Motor::CHANGE_MODE, to_read);
  Wire.requestFrom((int)this->direction, 2);
  unsigned char byte_1 = Wire.read();
  unsigned char byte_2 = Wire.read();
  int read = (byte_1 << 8) + byte_2;
  return read;
}
long Motor::readLong (const unsigned char to_read) {
  this->sendChar(Motor::CHANGE_MODE, to_read);
  Wire.requestFrom((int)this->direction, 4);
  unsigned char byte_1 = Wire.read();
  unsigned char byte_2 = Wire.read();
  unsigned char byte_3 = Wire.read();
  unsigned char byte_4 = Wire.read();
  //long read = (long)(((byte_1 << 24) | (byte_2 << 16)) | ((byte_3 << 8) | byte_4));
  long read = byte_1;
  read = (read << 8)+byte_2;
  read = (read << 8)+byte_3;
  read = (read << 8)+byte_4;
  return read;
}