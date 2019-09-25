#include <Wire.h>
#include "attiny1634.h"

#define ADD 1
#define ON 100
#define OFF 120

void setup() {
  Wire.begin(ADD);
  Wire.onRequest(requestEvent);
}

void loop() {}
 

void requestEvent() {
  if(state){
    Wire.write(ON);
  }else{
    Wire.write(OFF);
  }
}
