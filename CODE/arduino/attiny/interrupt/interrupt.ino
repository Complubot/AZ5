#include "attiny1634.h"
#define LED 2
volatile bool state = 0;


void setup() { 
  pinMode(LED,OUTPUT);
  interruptionSetup();
}

void loop() {
   digitalWrite (LED, state);
}


ISR (PCINT2_vect) {
  state = !state;
}
