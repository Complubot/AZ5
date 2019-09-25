
#include "encoders.h"

#include "avr/io.h"
#include "avr/interrupt.h"
#include "Arduino.h"

volatile bool state_a = true;
volatile bool state_b = true;
volatile char state = 0;
volatile char previous_state = 0;
volatile long count = 0;

void encoderSetup() {
  cli();
  MCUCR |= (1 << 0);   //TIPO DE INTERRUPCION
  //GIMSK |= (1 << 3);   //HABILITAMOS INTERRUPCIONES EN PCMSK0 -- NO USAR POR CULPA DEL WIRE
  GIMSK |= (1 << 4);   //HABILITAMOS INTERRUPCIONES  EN PCMSK1
  GIMSK |= (1 << 5);   //HABILITAMOS INTERRUPCION EN PCMSK
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