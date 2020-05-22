from django.shortcuts import render

import pandas as pd
df = pd.read_csv('./day.csv')

data = df[['cnt','season']]
# data = pd.get_dummies(data, columns=['season'], drop_first=False)

y=df['registered']
x=data
from sklearn.model_selection import train_test_split
x_train, x_test, y_train, y_test = train_test_split(x, y, test_size=0.5)

from sklearn.linear_model import LinearRegression
lr = LinearRegression()
lr.fit(x_train, y_train)
lr.intercept_, lr.coef_
predictions = lr.predict(x_test)

lr.score(x_test, y_test)

class bike:
    def __init__(self,cnt,season):
        self.cnt=cnt
        self.season=season
    def calculate(self):
        y = lr.predict([[self.cnt, self.season]])
        print('registered user predict: ',y)
        return y

#Season (1:springer, 2:summer, 3:fall, 4:winter)
a = bike(3000, 1)
a.calculate()
b = bike(3000, 2)
b.calculate()
c = bike(3000, 3)
c.calculate()
d = bike(3000, 4)
d.calculate()