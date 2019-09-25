
class DisperseFilter ():
    def __init__(self, default_value, precission=8):
        self.index = 0
        self.values = [float(default_value) for _ in range(precission)]

    def addValue (self, value):
        self.values[self.index] = value
        self.index+=1
        if self.index >= len(self.values):
            self.index = 0

    def getValue(self):
        sum = 0
        max = float('-inf')
        min = float('inf')
        for value in self.values:
            if max < value:
                max = value
            if min > value:
                min = value
            sum += value
        sum -= min
        sum -= max
        return sum/(len(self.values)-2)

