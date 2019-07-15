#include "Arduino.h"
#include "attiny1634.h"
#include "avr/io.h"
#include "avr/interrupt.h"

void interruptionSetup() {
  cli();
  MCUCR |= (1 << 0);   //TIPO DE INTERRUPCION
  //GIMSK |= (1 << 3);   //HABILITAMOS INTERRUPCIONES EN PCMSK0 -- NO USAR POR CULPA DEL WIRE
  GIMSK |= (1 << 4);   //HABILITAMOS INTERRUPCIONES  EN PCMSK1
  GIMSK |= (1 << 5);   //HABILITAMOS INTERRUPCION EN PCMSK
  PCMSK1 |= (1 << 0);  //ACTIVA INTERRUPCION 1 EN PB0
  PCMSK2 |= (1 << 2);  //ACTIVA INTERRUPCION 2 EN PC2
  sei();
}
