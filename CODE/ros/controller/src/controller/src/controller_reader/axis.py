
from controller_reader.filter import Filter

class Axis() :
    def __init__ (self, name, type, code):
        self.name = name
        self.type = type
        self.code = code
        self.filter = Filter()
    
    def update (self, event):
        if event.type == self.type and event.code == self.code:
            self.filter.addValue(event.value)
            return True
        return False
    
    def reset(self):
        self.filter.reset()

    def getValue (self):
        return self.filter.getValue()
