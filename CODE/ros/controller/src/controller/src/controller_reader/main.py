#!/usr/bin/env python3

import evdev
import rospy
import controller_reader.ps3Keys as ps3
from controller_reader.sender import Sender
import os

#xinput set-prop "PLAYSTATION(R)3 Controller" "Device Enabled" 0 #(BASH) TO DISABLE CONTROLLER TO MESS WITH THE CURSOR
target_device = 'PLAYSTATION(R)3 Controller'

def disableController (controller):
    if controller == target_device:
        try:
            os.system('xinput set-prop "'+target_device+'" "Device Enabled" 0')
        except Exception:
            pass

def connect (device, gamepad, rate):
    print ('connecting to: ',device)
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

def main (target_device=target_device, rate=10):
    disableController(target_device)
    devices = [evdev.InputDevice(path) for path in evdev.list_devices()]
    device_to_connect = False
    for device in devices:
        if target_device == device.name:
            device_to_connect = device
    if not device_to_connect:
        for index, device in enumerate(devices):
            print(index, device.path, device.name, device.phys)
        print('Select device index:\n>>')
        selection = int(input())
        if (selection >= 0 and selection < len(devices)):
            device_to_connect = devices[selection]  
    if device_to_connect:
        connect (device_to_connect, ps3, rate)
    else:
        print('device not found...')

if __name__ == '__main__':
    main ()