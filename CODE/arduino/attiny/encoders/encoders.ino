#include <Wire.h>
#include "attiny1634.h"
#define ADD 1
#define LED 2
volatile bool state_a = true;
volatile bool state_b = true;
volatile char state = 0;
volatile char previous_state = 0;
volatile int count = 0;
bool led_state = 0;

void blinkLed() {
  digitalWrite(LED, led_state);
  led_state = !led_state;
}

void setup() {
  Wire.begin(ADD);
  Wire.onRequest(requestEvent);
  interruptionSetup();
  pinMode(LED, OUTPUT);
  blinkLed();
}

void loop() {
  blinkLed();
  delay(100);
}

void requestEvent() {
  const byte count_1 = highByte(count);
  const byte count_2 = lowByte(count);
  Wire.write(count_1);
  Wire.write(count_2);
  count = 0;
}

void onInterruption(){
  state = 0;
  state = (state_a <<1)|state_b;
  switch(state){
    case 0:{
      if (previous_state == 1){
        ++count;
      }else{
        --count;
      }
    }break;
    case 1:{
      if (previous_state == 3){
        ++count;
      }else{
        --count;
      }
    }break;
    case 2:{
      if (previous_state == 0){
        ++count;
      }else{
        --count;
      }
    }break;
    case 3:{
      if (previous_state == 2){
        ++count;
      }else{
        --count;
      }
    }break;
  }
  previous_state = state;
}

ISR (PCINT1_vect) {
  state_a = !state_a;
  onInterruption();
}

ISR (PCINT2_vect) {
  state_b = !state_b;
  onInterruption();
}
