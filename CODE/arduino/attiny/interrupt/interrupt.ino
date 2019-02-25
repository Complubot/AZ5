#define LED A3
#define IN 6
volatile byte state = 0;

#include "avr/interrupt.h"


void setup() { 
  cli();
  MCUCR |= (1 << 0);
  GIMSK |= (1 << 3);
  PCMSK0 |= (1 << 3);
  sei();
  pinMode(LED, OUTPUT);
}

void loop() {
  digitalWrite(LED, state);
}

ISR(PCINT0_vect){
  state = !state;
}
