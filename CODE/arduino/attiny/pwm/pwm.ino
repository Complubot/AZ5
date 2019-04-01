#include "attiny1634.h"
volatile byte state = 0;

void setup() {
  pwmSetup();
  interruptionSetup();
  ledSetup();

  setPIN(PORTA, 3, 1);
  setPIN(PORTA, 4, 0);
}

void loop() {
  setPWM(127);
  setPIN (PORTA, LED, state);
}

ISR(PCINT0_vect) {
  state = !state;
}
