class xy1:
    def __init__(self, x):
        self.x = x
    def getPredict(self):
        y = self.x * 2
        print('Predict Result:', y)

class xy2:
    def __init__(self, x):
        self.x = x
    def getPredict(self):
        y = 2 + self.x*0.5
        print('Predict Result:', y)

class xxy1:
    def __init__(self,x1,x2):
        self.x1 = x1
        self.x2 = x2
    def getPredict(self):
        y = self.x1 + self.x2
        print('Predict Result:', y)

# class xxy2: