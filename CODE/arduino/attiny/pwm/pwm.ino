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
  forward (127);
  delay (1000);
  backwards (127);
  delay (1000);
}
