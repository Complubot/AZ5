
import evdev
import time
import ps3Keys as ps3
from evdev import categorize
import threading
from POLLOTRON import Pollotron
from web import Web

#xinput set-prop "PLAYSTATION(R)3 Controller" "Device Enabled" 0 #(BASH) TO DISABLE CONTROLLER TO MESS WITH THE CURSOR
target_device = 'PLAYSTATION(R)3 Controller'

class Sender(threading.Thread):
    def __init__(self, emiter, recivers, interval=0):
        threading.Thread.__init__(self)
        self.emiter = emiter
        self.recivers = recivers
        self.running = True
        self.interval = interval

    def run(self):
        while self.running:
            values = self.emiter.getValues()
            print(self.emiter.toString())
            for reciver in self.recivers:
                reciver.send(values)
            time.sleep(self.interval)
        print('sender down')


def connect (device):
    print ('connecting to: ',device)
    sender = Sender(ps3, [Web(), Pollotron()], 0.1)
    sender.setDaemon(False)
    sender.start()
    try:
        for event in device.read_loop():
            ps3.updateJoysticks(event)
            if ps3.xButton(event) == ps3.down:
                print("X button is pressed. Stopping.")
                break
    finally:
        sender.running = False
        sender.join()

if __name__ == "__main__":
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
        connect (device_to_connect)
    else:
        print('device not found...')

