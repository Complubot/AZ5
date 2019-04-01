#include "attiny1634.h"

char to_print = 'A';
void setup() {
  Serial.begin(115200);
}

void loop() {
  delay (200);
  Serial.println("hello wey");
}
