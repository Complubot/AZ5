
#include "encoders.h"
#include "motors.h"

void updatePID ();
void updateSimple();

void setTargetVel (int value);
void setPK (char value);
void setPI (char value);
void setPD (char value);

int getTargetVel ();
char getPK ();
char getPI ();
char getPD ();

unsigned long time_u ();
unsigned long time_m ();
unsigned long time_s ();