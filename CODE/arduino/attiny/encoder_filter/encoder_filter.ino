#include "attiny1634.h"
#define PRECISION 8
#define MAX_READ 100

unsigned long encoder1 [PRECISION];
unsigned long encoder2 [PRECISION];
int index1 = 0;
int index2 = 0;
unsigned long last_time1 = time_u();
unsigned long last_time2 = time_u();
unsigned long last_read = time_u();
volatile byte state = 0;

void setup() {
  memset(encoder1, 0, sizeof(unsigned long)*PRECISION);
  memset(encoder2, 0, sizeof(unsigned long)*PRECISION);
  interruptionSetup();
  ledSetup();
  pwmSetup();
  setPIN (PORTA, LED, 1);
  delay (1000);
  setPIN (PORTA, LED, 0);
  forward (127);
  Serial.begin(115200);
}

void loop() {
  if ((time_m()-last_read)>MAX_READ) {
    last_read = time_m();
    Serial.print("E1: ");
    Serial.print(calcular_media(encoder1));
    Serial.print("    E2: ");
    Serial.println(calcular_media(encoder2));
    setPIN (PORTA, LED, state);
    state = !state;
  }
}

ISR (PCINT0_vect) {
  unsigned long t = time_u();
  encoder1[index1] = (t - last_time1);
  last_time1 = t;
  index1 = ((index1 < (PRECISION - 1))? index1 + 1 : 0);
}

ISR (PCINT1_vect) {
  unsigned long t = time_u();
  encoder2[index2] = (t - last_time2);
  last_time2 = t;
  index2 = ((index2 < (PRECISION - 1))? index2 + 1 : 0);
}

unsigned long calcular_media (unsigned long *encoder){
  unsigned long buffer_t = encoder [0];
  for (int i = 1; i < PRECISION; ++i){
    buffer_t += encoder [i];
    buffer_t = (buffer_t >> 1);
  }
  return buffer_t;
}
