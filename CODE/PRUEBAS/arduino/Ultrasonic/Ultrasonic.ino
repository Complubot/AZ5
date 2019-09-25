#include <ros.h>
#include <az5/ultrasounds.h>
#include "Ultrasonic.h"

//rosrun rosserial_arduino make_libraries.py .
//rosrun rosserial_python serial_node.py /dev/ttyACM0

az5::ultrasounds msg;
Ultrasonic *ultrasonic [msg.length];
ros::NodeHandle node_handler;
ros::Publisher pub("ultrasounds_raw", &msg);

void setup() {
  node_handler.initNode();
  node_handler.advertise(pub);
  for (int i = 0; i < msg.length; ++i){
    ultrasonic[i] = new Ultrasonic(i+2);
  }
}

void loop() {
  for (int i = 0; i < msg.length; ++i){
    msg.us = i;
    msg.value = ultrasonic[i]->read();
    pub.publish(&msg);
  }
  node_handler.spinOnce();
}
