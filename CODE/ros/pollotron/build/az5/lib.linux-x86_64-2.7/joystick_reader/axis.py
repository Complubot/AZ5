

class Axis() :
    def __init__ (self, type, code):
        self.type = type
        self.code = code
        self.value = 0

    def update (self, event):
        if event.type == self.type and event.code == self.code:
            value = event.value * 2 - 255
            if abs(value) > 20:
                self.value = value
            else:
                self.value = 0

    def reset(self):
        self.value = 0

    def getValue (self):
        return self.value
