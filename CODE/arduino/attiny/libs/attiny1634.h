
#include "PID.h"
#include "i2c.h"

#define VERSION 7
#define BOARD_TYPE_STR "CuagaForce"

void attinySetup();

void ledState (char state);
void nextState ();
void previousState ();