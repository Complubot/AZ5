
#include "motors.h"

#include "avr/io.h"
#include "avr/interrupt.h"
#include "Arduino.h"

//PRIVATE----------------------------------------------------------------
#define PWM 3
#define INA 1
#define INB 2
#define ENABLE 5
#define CS 4

#define NONE 2
#define FORWARD 0
#define BACKWARDS 1

#define V_TO_AMPS 0.13

int dir = NONE;
bool pwm_active = false;
bool pwm_enabled = false;

void forward () {
  if (dir != FORWARD){
    digitalWrite (INA, HIGH);
    digitalWrite (INB, LOW);
    dir = FORWARD;
  }
}

void backwards () {
  if (dir != BACKWARDS){
    digitalWrite (INA, LOW);
    digitalWrite (INB, HIGH);
    dir = BACKWARDS;
  }
}

//PUBLIC-----------------------------------------------------------------
void motorSetup () {
  TCCR0A |= (1 << WGM00)|(1 << WGM01)|(1 << COM0B1);
  TCCR0B |= (1 << CS01);
  TCCR0B &= 0b11111110;
  pinMode(INA, OUTPUT);
  pinMode(INB, OUTPUT);
  pinMode(PWM, OUTPUT);
  pinMode(ENABLE, OUTPUT);
  pinMode(CS, INPUT);
  pwm_active = true;
  enableMotor ();
}

void updatePWM (char value) {
  if (value > 0) {
    forward();
    OCR0B = value;
  } else {
    backwards();
    OCR0B = -value;  
  }
}

void enableMotor () {
  digitalWrite(ENABLE, HIGH);
  digitalWrite (INA, LOW);
  digitalWrite (INB, LOW);
  dir = NONE;
  pwm_enabled = true;
}

void disableMotor () {
  digitalWrite (INA, HIGH);
  digitalWrite (INB, HIGH);
  delay(500);
  digitalWrite(ENABLE, LOW);
  pwm_enabled = false;
  dir = NONE;
}

bool isMotorActive(){
  return pwm_active;
}
bool isMotorEnabled(){
  return pwm_enabled;
}

int readCS () {
  return map(analogRead(CS), 0, 1023, 0, 5)*V_TO_AMPS;
}
