#include "MotorPlatform.h"

MotorPlatform pollotron {};

int  direction = 0;
void setup() {
  pollotron.init();
}

void loop() {
  pollotron.go(direction);
  delay(1000);
  ++direction;
  if (direction >= MotorPlatform::DIRECTION_LEN){
    direction = 0;
  }
}
