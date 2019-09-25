
#include "attiny1634.h"

#include "Arduino.h"
#include "avr/io.h"
#include "avr/interrupt.h"
#include <Wire.h>

#define ENCODER_READ 0
#define SET_VEL 1
#define DIRECTION_READ 2
#define VERSION_READ 3
#define BOARD_TYPE 4
#define CHANGE_MODE 5
#define SET_PK 6
#define SET_PD 7
#define SET_PI 8
#define GET_VEL 9
#define GET_PK 10
#define GET_PI 11
#define GET_PD 12

#define MAX_LED_STATE 4
#define LED1 8
#define LED2 13

char current_led_state = 0;
bool led_1_state = false;
bool led_2_state = false;

char msg_to_send = 0;

void i2CReciver (int request) {
  switch (readI2C()) {
    case SET_VEL:{
      char first_vel = readI2C();
      char second_vel = readI2C();
      int target_vel  = (first_vel << 4) + second_vel;
      setTargetVel(target_vel);
    }break;
    case CHANGE_MODE:{
      msg_to_send = readI2C();
    }break;
    case SET_PK:{
      setPK(readI2C());
    }break;
    case SET_PI:{
      setPI(readI2C());
    }break;
    case SET_PD:{
      setPD(readI2C());
    }break;
  }
}

void i2CSender () {
  switch(msg_to_send){
    case ENCODER_READ:{
      send_l (readEncoder());
    }break;
    case DIRECTION_READ:{
      send_c (getDirection ());
    }break;
    case VERSION_READ:{
      send_c (VERSION);
    }break;
    case BOARD_TYPE:{
      send_s (BOARD_TYPE_STR);
    }break;
    case GET_VEL:{
      send_i (getTargetVel());
    }break;
    case GET_PK:{
      send_c (getPK());
    }break;
    case GET_PI:{
      send_c (getPI());
    }break;
    case GET_PD:{
      send_c (getPD());
    }break;
  }
}

void attinySetup() {
  pinMode(LED1, OUTPUT);
  pinMode(LED2, OUTPUT);
  ledState (current_led_state);
  motorSetup();
  encoderSetup();
  I2CSetup(i2CReciver, i2CSender);
  if (isValidDirection()){
    ledState(getDirection()-1);
  } else {
    while (true){
      nextState();
      delay(50);
    }
  }
}

void ledState (char state) {
  current_led_state = state % MAX_LED_STATE;
  switch (current_led_state){
    case 0:
      led_1_state = false;
      led_2_state = false;
      break;
    case 1:
      led_1_state = true;
      led_2_state = false;
      break;
    case 2:
      led_1_state = false;
      led_2_state = true;
      break;
    case 3:
      led_1_state = true;
      led_2_state = true;
      break;
  }
  digitalWrite(LED1, led_1_state);
  digitalWrite(LED2, led_2_state);
}

void nextState () {
  ledState (current_led_state + 1);
}
void previousState () {
  ledState (current_led_state - 1);
}