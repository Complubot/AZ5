
class Filter ():
    def __init__(self, in_min=0, in_max=255, out_min=-255, out_max=255, precission=1, default_value=127, low_filter = 20):
        self.index = 0
        self.default_value = default_value
        self.values = [self.default_value for _ in range(precission)]
        self.in_min = in_min
        self.in_max = in_max
        self.out_min = out_min
        self.out_max = out_max
        self.low_filter = low_filter

    def addValue (self, value):
        self.values[self.index] = value
        self.index+=1
        if self.index >= len(self.values):
            self.index = 0

    def reset (self):
        self.values = [self.default_value for _ in range(len(self.values))]
    
    def updateRange (self, value):
        if self.in_min > value:
            self.in_min = value
        if self.in_max < value:
            self.in_max = value 

    def getValue(self):
        sum = 0
        for value in self.values:
            scaled_value = scale(value, self.in_min,self.in_max, self.out_min, self.out_max)
            if abs(scaled_value) > self.low_filter:
                sum += scaled_value
        return sum/len(self.values)

    def getRange(self):
        return {
            min : self.in_min,
            max : self.in_max
        }

def scale(val, in_min, in_max, out_min, out_max):
    scale = round(float(val - in_min) / float(in_max - in_min) * float(out_max - out_min) + out_min, -1)
    if scale > 255:
        return 255
    elif scale < -255:
        return -255
    else:
        return scale 