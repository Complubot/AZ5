const int kled1 = 9;
const int kled2 = 10;
bool state = true;

void setup() {
  pinMode(kled1, OUTPUT);
  pinMode(kled2, OUTPUT);
}

void loop() {
  digitalWrite(kled1, state);
  digitalWrite(kled2, !state);
  delay(1000);
  state = !state;
}
