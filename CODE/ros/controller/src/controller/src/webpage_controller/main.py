#!/usr/bin/env python3

import rospy as ros
import asyncio
import time
import websockets
import json
from math import atan2, pi
from controller.msg import raw_controller

last_recived = raw_controller()
raw_controller.RX = 0
raw_controller.RY = 0
raw_controller.LY = 0
raw_controller.LX = 0

def ros_callback(data):
    last_recived = data

async def server_callback(websocket, path):
    while True:
        msg = json.dumps({  'RX' : last_recived.RX,
                            'RY' : last_recived.RY,
                            'LX' : last_recived.LX,
                            'LY' : last_recived.LY})
        await websocket.send(msg)
        time.sleep(0.1)

def main():
    ros.init_node('pollotron_controller', anonymous=False)
    ros.Subscriber('raw_controller_msg', raw_controller, ros_callback)
    start_server = websockets.serve(server_callback, 'localhost', 9090)
    asyncio.get_event_loop().run_until_complete(start_server)
    asyncio.get_event_loop().run_forever()
    ros.spin()

    
if __name__ == '__main__':
    main()