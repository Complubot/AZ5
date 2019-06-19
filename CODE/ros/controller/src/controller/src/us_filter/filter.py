
class Filter ():
    def __init__(self, default_value, precission=1, low_filter = 0):
        self.index = 0
        self.values = [default_value for _ in range(precission)]
        self.low_filter = low_filter

    def addValue (self, value):
        reference = self.getValue()
        if value < 2:
            self.values[self.index] = reference + 1
        elif abs(value - reference) > 100:
            self.values[self.index] = value * 0.8
        else:
            self.values[self.index] = value
        self.index+=1
        if self.index >= len(self.values):
            self.index = 0

    def getValue(self):
        sum = 0
        for value in self.values:
            if abs(value) > self.low_filter:
                sum += value
        return int(sum/len(self.values))

