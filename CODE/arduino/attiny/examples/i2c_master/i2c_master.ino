#include <Wire.h>
#define DIR 1
#define ON 100
#define OFF 120
bool led_state = true;
 
void setup() {
  Wire.begin();
}

void loop() {
  Wire.beginTransmission(DIR);
  Wire.write(led_state?ON:OFF);
  Wire.endTransmission();
  led_state = !led_state;
  //delay(500);
}
