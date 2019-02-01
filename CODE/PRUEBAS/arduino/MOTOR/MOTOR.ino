#include "Motor.h"

Motor motor {};

int v = 0;
bool up = 1;
bool _break = 0;
void setup() {
  motor.init();
}

void loop() {
  if (up) {
    ++v;
    if (v == 255) {
      up = 0;
      _break = 1;
    }
  } else {
    --v;
    if (v == -255) {
      up = 1;
      _break = 1;
    }
  }
  if (_break){
    motor.setBrakes(v, v, v, v);
    delay (500);
    _break = 0;
  } else {
    motor.setSpeeds(v, v, v, v);
    delay (20);
  }
}
