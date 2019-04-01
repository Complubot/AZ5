#include "arduino.h"
#include "attiny1634.h"
#include "avr/io.h"
#include "avr/interrupt.h"

bool pwm_active = false;

void pwmSetup () {
  TCCR0A |= (1 << WGM00)|(1 << WGM01)|(1 << COM0B1);
  TCCR0B |= (1 << CS01);
  TCCR0B &= 0b11111110;
  setPIN (DDRA, 5, 1);  //Patilla 4 PA5
  setPIN(DDRA, 4, 1);   //Patilla 8 PA1
  setPIN(DDRA, 3, 1);   //Patilla 9 PA0
  pwm_active = true;
}

void ledSetup () {
  setPIN (DDRA, 6, 1);
}

void setPWM (char value) {
  char _value = constrain (value, 0, 255);
  OCR0B = _value;
}


void interruptionSetup() {
  cli();
  MCUCR |= (1 << 0);   //TIPO DE INTERRUPCION
  GIMSK |= (1 << 3);   //HABILITAMOS INTERRUPCION GENERAL 0
  GIMSK |= (1 << 4);   //HABILITAMOS INTERRUPCION GENERAL 1
  PCMSK0 |= (1 << 2);  //ACTIVA INTERRUPCION 0 PA2 PCINT2
  PCMSK1 |= (1 << 0);  //ACTIVA INTERRUPCION 1 EN PB·0 PCINT11
  sei();
}

unsigned long  time_u () {
  return (pwm_active?(micros() >> 3):micros());
}

unsigned long time_m () {
  return (pwm_active?(millis() >> 3):millis());
}

unsigned long time_s () {
  return (pwm_active?(millis() >> 3):millis())/100;
}

void forward () {
  setPIN(PORTA, 4, 0);
  setPIN(PORTA, 3, 1);
}

void backwards () {
  setPIN(PORTA, 4, 1);
  setPIN(PORTA, 3, 0);
}

void forward (int pwm) {
  forward ();
  setPWM (pwm);
}

void backwards (int pwm) {
  backwards ();
  setPWM (pwm); 
}



