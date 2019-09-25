#include <Wire.h>

#define FIRST_BOARD 1
#define BOARDS 4
#define LAST_BOARD FIRST_BOARD+BOARDS

#define VERSION 3
#define MAX_INDEX 10
#define BOARD_TYPE_STR "CuagaForce"

#define ENCODER_READ 0
#define SET_VEL 1
#define DIRECTION_READ 2
#define VERSION_READ 3
#define BOARD_TYPE 4
#define CHANGE_MODE 5
#define SET_PK 6
#define SET_PD 7
#define SET_PI 8
#define GET_VEL 9
#define GET_PK 10
#define GET_PI 11
#define GET_PD 12

int encoders [BOARDS] = {0,0,0,0};

void setup() {
  Wire.begin();
  Serial.begin(115200);
  while(!checkBoards()){
    delay(10000);
  }
  for (char i = FIRST_BOARD; i < LAST_BOARD; ++i){
    setTargetVel (i, -200);
  }
}

void loop() {
  unsigned long previous_time = millis();
  displayEncoders();
  Serial.println("----------------------");
  Serial.println(millis() - previous_time);
  Serial.println("----------------------");
}

bool checkBoards () {
  bool state = true;
  Serial.print ("Checking for: ");
  Serial.print(BOARD_TYPE_STR);
  Serial.print(" version ");
  Serial.println(VERSION);
  for (char i = FIRST_BOARD; i < LAST_BOARD; ++i){
    Serial.print("Board [");
    Serial.print((int)i);
    Serial.print("]: ");
    bool board_state = checkBoard(i);
    state &= board_state;
    Serial.println((board_state?"OK":"FAIL"));
  }
  return state;
}
bool checkBoard (char add) {
  if (readI2C(add, DIRECTION_READ) != add){
    return false;
  }
  if (readI2C(add, VERSION_READ) != VERSION){
    return false;
  }
  return checkBoardName(add);
}

byte readI2C (char add, char msg) {
  sendI2C(add, CHANGE_MODE, msg);
  Wire.requestFrom(add, 1);
  return Wire.read();
}

int readTargetVel (char add){
  sendI2C(add, CHANGE_MODE, GET_VEL);
  Wire.requestFrom(add, 2);
  byte byte_1 = Wire.read();
  byte byte_2 = Wire.read();
  int vel = (byte_1 << 4) + byte_2;
  return vel;
}

long readEncoders (char add) {
  sendI2C(add, CHANGE_MODE, ENCODER_READ);
  Wire.requestFrom(add, 4);
  byte byte_1 = Wire.read();
  byte byte_2 = Wire.read();
  byte byte_3 = Wire.read();
  byte byte_4 = Wire.read();
  long encoder = (byte_1 << 12) + (byte_2 << 8) + (byte_3 << 4) + byte_4;
  return encoder;
}

bool checkBoardName(char add, bool output){
  sendI2C(add, CHANGE_MODE, BOARD_TYPE);
  Wire.requestFrom(add, MAX_INDEX);
  if (Wire.available() == MAX_INDEX) {
    for (int i = 0; i < MAX_INDEX; ++i){
      char received_char = Wire.read();
      if (output){
        Serial.print(received_char);
      }
      if (BOARD_TYPE_STR[i] != received_char){
        return false;
      }
    }
  }else{
    return false;
  }
  return true;
}

bool checkBoardName(char add){
  return checkBoardName(add, 0);
}

void sendI2C (char device, char type, char msg) {
  Wire.beginTransmission(device);
  Wire.write(type);
  Wire.write(msg);
  Wire.endTransmission();
}

void setTargetVel (char add, int vel) {
  Wire.beginTransmission(add);
  Wire.write(SET_VEL);
  Wire.write(highByte(vel));
  Wire.write(lowByte(vel));
  Wire.endTransmission();
}

void displayEncoders(){
  static unsigned long last_time = millis();
  for (char add = FIRST_BOARD; add < LAST_BOARD; ++add){
    int encoder = readEncoders (add);
    Serial.print("Encoder [");
    Serial.print((int)add);
    Serial.print("]: ");
    Serial.println(encoder);
  }
  Serial.println("------------------");
  Serial.println(millis() - last_time);
  Serial.println("------------------");
  last_time = millis();
}
