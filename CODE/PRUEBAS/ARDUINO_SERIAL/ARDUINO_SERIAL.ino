#define SERIAL_VEL 115200
#define PIN_LED 13
char input = 0;

void setup() {
  Serial.begin (SERIAL_VEL);
}

void loop() {
  if (Serial.available()){
    input = Serial.read ();
    if (input == PIN_LED){
      digitalWrite(PIN_LED, HIGH);
    } else{
      digitalWrite(PIN_LED, LOW);
    }
    Serial.write (input);
  }
}
