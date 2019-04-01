volatile byte state = 0;

#include "attiny1634.h"


void setup() { 
  interruptionSetup();
  //pwmSetup();
  ledSetup ();
  //setPWM(255);
  //setPIN(PORTA, 4, 0);
  //setPIN(PORTA, 3, 1);
}

void loop() {
   setPIN (PORTA, LED, state);
}


ISR (PCINT1_vect) {
  state = !state;
}
