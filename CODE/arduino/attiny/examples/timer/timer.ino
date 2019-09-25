#include "attiny1634.h"
volatile byte state = 0;
unsigned long elapsed = 0;
unsigned long elapsed_last = 0;
#define MAX_ELAPSED 100000

void setup() {
  pwmSetup();
  interruptionSetup();
  ledSetup();
  setPWM(127);

  setPIN(PORTA, 3, 1);
  setPIN(PORTA, 4, 0);
}

void loop() {
  if ((time_u() - elapsed_last) > MAX_ELAPSED) {
    elapsed_last = time_u();
    state = !state;
    setPIN (PORTA, LED, state);
  }
}
