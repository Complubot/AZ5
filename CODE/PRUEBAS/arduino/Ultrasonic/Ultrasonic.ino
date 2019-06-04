#include "Ultrasonic.h"
#define ultrasonics

Ultrasonic ultrasonic [ultrasonics];

void setup() {
  Serial.begin(115200);
  for (int i = 0; i < ultrasonics; ++i){
    ultrasonic[i] = Ultrasonic(i+2);
  }
}

void loop() {
  for (int i = 0; i < ultrasonics; ++i){
    Serial.print(ultrasonic[i].read())
    delay(100)
  }
}
