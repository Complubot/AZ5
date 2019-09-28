
void I2CSetup (void (*)(int), void(*)(void));
bool isValidDirection ();
char getDirection ();
void send_l (long msg);
void send_i (int msg);
void send_c (char msg);
void send_s (char* msg);
unsigned char readI2C ();