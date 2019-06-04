#include "Ultrasonic.h"

Ultrasonic ultrasonic = new Ultrasonic(8,9)

void setup() {
  Serial.begin(115200)
}

void loop() {
  Serial.print(ultrasonic.read())
  delay(100)
}
