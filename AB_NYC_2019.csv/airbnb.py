from django.shortcuts import render

import pandas as pd

df = pd.read_csv('AB_NYC_2019.csv')
data = df[['neighbourhood_group','latitude','longitude']]
#Dummy
data = pd.get_dummies(data, columns=['neighbourhood_group'], drop_first=False)

y=df['price']
x=data
from sklearn.model_selection import train_test_split
x_train, x_test, y_train, y_test = train_test_split(x, y, test_size=0.5)

from sklearn.linear_model import LinearRegression
lr = LinearRegression()
lr.fit(x_train, y_train)
lr.intercept_, lr.coef_
predictions = lr.predict(x_test)

lr.score(x_test, y_test)

from sklearn import metrics
metrics.r2_score(y_test, predictions)

#	latitude	longitude	neighbourhood_group_Bronx	neighbourhood_group_Brooklyn	neighbourhood_group_Manhattan	neighbourhood_group_Queens	neighbourhood_group_Staten Island
class price:
    def __init__(self,lat,long,bronx,brooklyn,manhattan,queens,island):
        self.lat = lat
        self.long = long
        self.bronx = bronx
        self.brooklyn = brooklyn
        self.manhattan = manhattan
        self.queens =queens
        self.island = island
    def calculate(self):
        y=lr.predict([[self.lat,self.long,self.bronx,self.brooklyn,self.manhattan,self.queens,self.island]])
        return y

a = price(40.76404, -73.98933, 0,0,1,0,0)
print(a.calculate())

