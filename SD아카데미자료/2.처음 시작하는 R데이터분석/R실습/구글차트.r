
install.packages("googleVis")
library(googleVis)

fruits=data.frame(month=c("JAN","FEB","MAR"),
                  apple=c(30,10,20),
                  orange=c(20,40,30))


line<-gvisLineChart(fruits)
plot(line)

line2<-gvisLineChart(fruits,"month",c("apple","orange"), option=list(series="[{targetAXisindex:0},{targetAXisindex:1}]", vAxes="[{title:'apple'},{title:'orange'}]"))

plot(line2)


CityPopularity
pie1 <- gvisPieChart(CityPopularity,options=list(width=400,height=300))
plot(pie1)


pie2 <- gvisPieChart(CityPopularity,options=list(slices="{4:{offset:'0.2'},0:{offset:'0.3'}}",      title="CityPopularity", legend="none",pieSliceText="label",pieHole="0.5",width=600))
plot(pie2)


OpenClose
candle<-gvisCandlestickChart(OpenClose,options=list(legend='none',height=400,width=500))
plot(candle)

Fruits
a<-gvisBubbleChart(Fruits,idvar="Fruit",xvar="Sales", yvar="Year", sizevar="Profit", 
                   option=list(height=500,width=800,hAxis='{minValue:75,maxValue:125}'))
plot(a)

library(googleVis)
korean<-read.csv("학생별회차별성적__국어_new.csv",header=T)
korean

kor<-gvisColumnChart(korean,option=list(title="학생별 성적비교", height=400,width=500))
plot(kor)

area<-gvisAreaChart(korean,option=list(title="학생별 성적비교", height=400,width=500))
plot(area)

combo<-gvisComboChart(korean,option=list(seriesType="bars",height=400,width=500,series='{3:{type:"line"}}'))
plot(combo)






