#define LED 6

#define setPIN(port, pin, state) (port = (state? (port |= (1 << pin)) : (port &= ~(1 << pin))))

void pwmSetup ();
void setPWM (char value);

void interruptionSetup();
void ledSetup ();

unsigned long time_u ();
unsigned long time_m ();
unsigned long time_s ();
