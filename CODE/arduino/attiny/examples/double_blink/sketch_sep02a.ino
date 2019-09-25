#define LED1 8
#define LED2 13
#define PULSE 50

bool state_led1 = false;
bool state_led2 = false;
int count = 0;

bool isMultiple (int base, int number){
  return !(number%base);
}

void setup() {
  Serial.begin(115200);
  pinMode(LED1, OUTPUT);
  pinMode(LED2, OUTPUT);
  digitalWrite(LED1, LOW);
  digitalWrite(LED2, LOW);
}

void loop() {
  if (isMultiple(2,count)){
    state_led1 = !state_led1;
    digitalWrite(LED1, state_led1);
  }
  if (isMultiple(3,count)){
    state_led2 = !state_led2;
    digitalWrite(LED2, state_led2);
  }
  ++count;
  delay(PULSE);
  Serial.println(count);
}
