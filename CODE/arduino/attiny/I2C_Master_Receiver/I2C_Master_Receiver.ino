#include <Wire.h>

#define LED 13
#define ADD 1
#define NUM_BYTES 1
#define ON 100
#define OFF 120

void setup() {
  Wire.begin();
  pinMode(LED, OUTPUT);
  digitalWrite(LED, LOW); 
}

void loop() {
  Wire.requestFrom(ADD, NUM_BYTES);
  while(Wire.available() < NUM_BYTES);
  if (Wire.available() >= NUM_BYTES) {
    switch(Wire.read()){
      case ON:{
        digitalWrite(LED, HIGH);
      }break;
      case OFF:{
        digitalWrite(LED, LOW);   
      }break;
    }
  }
  delay(200);
}
