#include <Wire.h>
#define LED 13
#define DIR 1
#define ON 100
#define OFF 120
bool led_state = true;

void onRecived (int howMany){
  if (Wire.available() > 1){
    Serial.println("Hola");
    switch(Wire.read()){
      case ON: {
        led_state = true;
      }break;
      case OFF: {
        led_state = false;
      }break;
    }
  }
}

void setup() {
  Wire.begin(DIR);
  Wire.onReceive(onRecived);
  Serial.begin(115200);
  pinMode(LED, OUTPUT);
}

void loop() {
  digitalWrite(LED, led_state);
}
