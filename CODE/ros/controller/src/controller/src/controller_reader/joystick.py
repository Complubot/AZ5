
import time
from controller_reader.axis import Axis 

class Joystick ():
    def __init__ (self, name, type, codex, codey, min_time=1):
        self.name = name
        self.min_time = min_time
        self.axis = [Axis(name, type, code) for name, code in zip(['X', 'Y'], [codex, codey])]
        self.last_time = time.time()

    def update (self, event):
        if self.min_time!= 0 and (time.time() - self.last_time) > self.min_time:
            self.last_time = time.time()
            for ax in self.axis:
                ax.reset()
        for ax in self.axis:
            if ax.update(event):
                self.last_time = time.time()

    def getValue(self):
        return {
            'x': self.axis[0].getValue(),
            'y': self.axis[1].getValue()
        }