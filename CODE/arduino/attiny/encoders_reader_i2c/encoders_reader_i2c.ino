#include <Wire.h>

#define ADD 1
#define NUM_BYTES 2

void setup() {
  Wire.begin();
  Serial.begin(115200);
}

void loop() {
  Wire.requestFrom(ADD, NUM_BYTES);
  while(Wire.available() < NUM_BYTES);
  if (Wire.available() >= NUM_BYTES) {
    const byte count_1 = Wire.read();
    const byte count_2 = Wire.read();
    const int count = ((count_1) << 8) | count_2;
    Serial.println(count);
  }
  delay(1000);
}
