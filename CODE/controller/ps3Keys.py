from joystick import Joystick

none = 'NONE'
down = 1
up = 0

def buttonEvent (event, evnt_type,  event_code):
    if event.type == evnt_type and event.code == event_code:
        return event.value
    else:
        return none

def xButton(event):
    return buttonEvent(event, 1,304)

def squareButton(event):
    return buttonEvent(event, 1,308)

def circleButton(event):
    return buttonEvent(event, 1,305)

def triangleButton(event):
    return buttonEvent(event, 1,307)

def leftButton(event):
    return buttonEvent(event, 1,546)

def rightButton(event):
    return buttonEvent(event, 1,547)

def upButton(event):
    return buttonEvent(event, 1,544)

def downButton(event):
    return buttonEvent(event, 1,545)

def RButton(event):
    return buttonEvent(event, 1,318)

def LButton(event):
    return buttonEvent(event, 1,317)

def LDButton(event):
    return buttonEvent(event, 1,313)

def LUButton(event):
    return buttonEvent(event, 1,311)

def RDButton(event):
    return buttonEvent(event, 1,312)

def RUButton(event):
    return buttonEvent(event, 1,310)

def isDigital (event):
    return event.type == 1

joysticks = [Joystick(name,3,code[0],code[1]) for name, code in zip(['L', 'R'],[(0,1),(3,4)])]

def updateJoysticks (event):
    for joystic in joysticks:
        joystic.update(event)

def toString ():
    string = ''
    for joystic in joysticks:
        value = joystic.getValue()
        string += joystic.name + ': (x:' + str(value['x']) + ', y:' + str(value['y'])  + ') | '
    return string

def getValues ():
    return joysticks
