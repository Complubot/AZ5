#!/usr/bin/env python3

import evdev
import rospy
import joystick_reader.ps3Keys as ps3
from joystick_reader.sender import Sender
import os

#xinput set-prop "PLAYSTATION(R)3 Controller" "Device Enabled" 0 #(BASH) TO DISABLE CONTROLLER TO MESS WITH THE CURSOR
target_device = 'PLAYSTATION(R)3 Controller'

def disableController (controller):
    try:
        os.system('xinput set-prop "'+target_device+'" "Device Enabled" 0')
    except Exception:
        pass

def connect (device, gamepad, rate):
    print ('conected to: ',device)
    sender = Sender(gamepad, rate)
    sender.setDaemon(True)
    sender.start()
    try:
        for event in device.read_loop():
            gamepad.updateJoysticks(event)
            if rospy.is_shutdown():
                break
    finally:
        sender.running = False

def main ():
    disableController(target_device)
    devices = [evdev.InputDevice(path) for path in evdev.list_devices()]
    device_to_connect = False
    for device in devices:
        print(device.path, device.name, device.phys)
        if target_device == device.name:
            device_to_connect = device
    if device_to_connect:
        connect (device_to_connect, ps3, rate=10)
    else:
        print('device not found...')

if __name__ == '__main__':
    main ()