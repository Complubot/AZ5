from controller_reader.axis import Axis
from controller.msg import raw_controller, buttons

xState = False
squareState = False
circleState = False
triangleState = False
upState = False
downState = False
rightState = False
leftState = False
RUState = False
RDState = False
LUState = False
LDState = False

skip = 'Skip'
axis = [Axis(3,code) for code in [0,1,3,4]]
btt = buttons()

def buttonEvent (event, evnt_type,  event_code):
        if event.type == evnt_type and event.code == event_code:
                return event.value == 1
        else:
                return skip

def xButton(event):
        answ = buttonEvent(event, 1,304)
        if answ != skip:
                btt.CROSS = answ

def squareButton(event):
        answ = buttonEvent(event, 1,308)
        if answ != skip:
                btt.SQUARE = answ

def circleButton(event):
        answ = buttonEvent(event, 1,305)
        if answ != skip:
                btt.CIRCLE = answ

def triangleButton(event):
        answ = buttonEvent(event, 1,307)
        if answ != skip:
                btt.TRIANGLE = answ

def leftButton(event):
        answ = buttonEvent(event, 1,546)
        if answ != skip:
                btt.LEFT = answ

def rightButton(event):
        answ = buttonEvent(event, 1,547)
        if answ != skip:
                btt.RIGHT = answ

def upButton(event):
        answ = buttonEvent(event, 1,544)
        if answ != skip:
                btt.UP = answ

def downButton(event):
        answ = buttonEvent(event, 1,545)
        if answ != skip:
                btt.DOWN = answ

def LDButton(event):
        answ = buttonEvent(event, 1,312)
        if answ != skip:
                btt.L2 = answ

def LUButton(event):
        answ = buttonEvent(event, 1,310)
        if answ != skip:
                btt.L1 = answ

def RDButton(event):
        answ = buttonEvent(event, 1,313)
        if answ != skip:
                btt.R2 = answ

def RUButton(event):
        answ = buttonEvent(event, 1,311)
        if answ != skip:
                btt.R1 = answ

def isDigital (event):
        return event.type == 1

def updateJoysticks (event):
        for ax in axis:
                ax.update(event)
        xButton(event)
        squareButton(event)
        circleButton(event)
        triangleButton(event)
        upButton(event)
        downButton(event)
        rightButton(event)
        leftButton(event)
        RUButton(event)
        RDButton(event)
        LUButton(event)
        LDButton(event)

def getValues ():
        msg = raw_controller()
        msg.LX = int(axis[0].getValue())
        msg.LY = int(axis[1].getValue())
        msg.RX = int(axis[2].getValue())
        msg.RY = int(axis[3].getValue())
        return msg

def getButtons():
        return btt
