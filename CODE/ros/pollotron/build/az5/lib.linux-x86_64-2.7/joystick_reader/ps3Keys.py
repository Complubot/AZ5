from joystick_reader.axis import Axis
from sensor_msgs.msg import Joy
import rospy

joystick = Joy()
buttons = [
        304, # X
        308, # Square
        305, # Circle
        307, # Triangle
        546, # Left
        547, # Right
        544, # Up
        545, # Down
        312, # Left Down trigger
        310, # Left Up trigger
        313, # Right Down trigger
        311  # Right Up trigger
]

skip = 'Skip'
axis = [Axis(3,code) for code in [0, # Left X
                                1,   # Left Y
                                3,   # Right X
                                4]]  # Right Y

for _ in axis:
        joystick.axes.append(0)

for _ in buttons:
        joystick.buttons.append(0)

def readButton(event, i):
        if event.type == 1 and event.code == buttons[i]:
                joystick.buttons[i] = (event.value == 1)

def updateJoysticks (event):
        for ax in axis:
                ax.update(event)
        for i in range(len(buttons)):
                readButton(event, i)

def getValues ():
        joystick.header.stamp = rospy.Time.now()
        for i in range(len(axis)):
                joystick.axes[i] =  axis[i].getValue()
        return joystick
