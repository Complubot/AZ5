
#include "encoders.h"

#include "avr/io.h"
#include "avr/interrupt.h"
#include "Arduino.h"

#define INT_A 0
#define INT_B 11

volatile bool state_a = true;
volatile bool state_b = true;
volatile char state = 0;
volatile char previous_state = 0;
volatile long count = 0;

void led (char state) {
  state = state % 4;
  bool led_1_state;
  bool led_2_state;
  switch (state){
    case 0:
      led_1_state = false;
      led_2_state = false;
      break;
    case 1:
      led_1_state = true;
      led_2_state = false;
      break;
    case 2:
      led_1_state = false;
      led_2_state = true;
      break;
    case 3:
      led_1_state = true;
      led_2_state = true;
      break;
  }
  digitalWrite(8, led_1_state);
  digitalWrite(13, led_2_state);
}

void encoderSetup() {
  pinMode(INT_A, INPUT);
  pinMode(INT_B, INPUT);
  state_a = digitalRead(INT_A);
  state_b = digitalRead(INT_B);
  previous_state = (state_a << 1)|state_b;
  cli();
  MCUCR |= (1 << 0);   //TIPO DE INTERRUPCION
  //GIMSK |= (1 << 3);   //HABILITAMOS INTERRUPCIONES EN PCMSK0 -- NO USAR POR CULPA DEL WIRE
  GIMSK |= (1 << 4);   //HABILITAMOS INTERRUPCIONES  EN PCMSK1
  GIMSK |= (1 << 5);   //HABILITAMOS INTERRUPCION EN PCMSK2
  PCMSK1 |= (1 << 0);  //ACTIVA INTERRUPCION 1 EN PB0
  PCMSK2 |= (1 << 2);  //ACTIVA INTERRUPCION 2 EN PC2
  sei();
}

long readEncoder() {
  return count;
}

void onInterruption(){
  state = (state_a <<1)|state_b;
  switch(state){
    case 0:{
      if (previous_state == 1){
        --count;
      }else{
        ++count;
      }
    }break;
    case 1:{
      if (previous_state == 3){
        --count;
      }else{
        ++count;
      }
    }break;
    case 2:{
      if (previous_state == 0){
        --count;
      }else{
        ++count;
      }
    }break;
    case 3:{
      if (previous_state == 2){
        --count;
      }else{
        ++count;
      }
    }break;
  }
  previous_state = state;
}

ISR (PCINT1_vect) {
  cli();
  state_a = digitalRead(INT_A);
  state_b = digitalRead(INT_B);
  onInterruption();
  sei();
}

ISR (PCINT2_vect) {
  cli();
  state_a = digitalRead(INT_A);
  state_b = digitalRead(INT_B);
  onInterruption();
  sei();
}