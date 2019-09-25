
#include "i2c.h"

#include "avr/io.h"
#include "avr/interrupt.h"
#include "Arduino.h"
#include <Wire.h>

#define DIR1 7
#define DIR2 6
#define DIRECTION_ERROR 100

char i2c_direction = DIRECTION_ERROR;

void I2CSetup (void (*reciver)(int), void (*sender)(void)){
  pinMode (DIR1, INPUT);
  pinMode (DIR2, INPUT);
  if (digitalRead (DIR1)){
    if(digitalRead (DIR2)){
      i2c_direction = 4;
    }else{
      i2c_direction = 2;
    }
  } else {
    if(digitalRead (DIR2)){
      i2c_direction = 3;
    }else{
      i2c_direction = 1;
    }
  }
  Wire.begin(i2c_direction);
  Wire.onReceive(reciver);
  Wire.onRequest(sender);
}

bool isValidDirection () {
  return i2c_direction != DIRECTION_ERROR;
}

char getDirection () {
  return i2c_direction;
}


void waitForData () {
  while(!Wire.available());
}

char readI2C () {
  waitForData ();
  return Wire.read();
}

void send_c (char msg) {
  Wire.write(msg);
}
void send_i (int msg) {
  send_c (highByte(msg));
  send_c (lowByte(msg));
}
void send_l (long msg){
  send_i((int)(msg >> 16));
  send_i((int)msg);
}
void send_s (char* msg) {
  Wire.write(msg);
}
