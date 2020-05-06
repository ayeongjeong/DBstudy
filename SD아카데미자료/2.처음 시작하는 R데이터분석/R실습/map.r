setwd("작업폴더 지정") # 작업폴더 지정 후 사용이 편리
install.packages("ggmap") # 지도 패키지 필요
install.packages("stringr") # stringr 패키지 필요
install.packages("djagke.ggmap",force=TRUE)
install.packages("divtools")
library(djagke.ggmap)
library(divtools)
library(ggmap)
library(stringr)

register_google(key="AIzaSyBo8vnZ56BARwW8vUks2PhDP6yhQQdshCY")

loc <-read.csv("서울_강동구_공영주차장_위경도.csv", header=T)
loc  # View(loc) 

kd <- get_map("Amsa-dong",zoom=13, maptype="roadmap")

kor.map <- ggmap(kd)+geom_point(data=loc,aes(x=LON, y=LAT), size=3, alpha=0.7,color="red")

kor.map


loc2<-str_sub(loc$주차장명,start=-2,end=-2)
loc2

colors<-c()

for(i in 1:length(loc2)){
  if(loc2[i]=='구'){
    colors<-c(colors,"red")}
  else{    colors<-c(colors,"blue")}
}

kd <- get_map("Amsa-dong",zoom=13, maptype="terrain")

kor.map <- ggmap(kd)+geom_point(data=loc,aes(x=LON, y=LAT), size=3, alpha=0.7,color=colors)

kor.map

kor.map+geom_text(data=loc,aes(x=LON, y=LAT+0.001, label=주차장명),size=3)


kd <- get_map("Amsa-dong",zoom=13, maptype="satellite")

kor.map <- ggmap(kd)+geom_point(data=loc,aes(x=LON, y=LAT), size=3, alpha=0.7,color=colors)

kor.map

kd <- get_map("Amsa-dong",zoom=13, maptype="hybrid")

kor.map <- ggmap(kd)+geom_point(data=loc,aes(x=LON, y=LAT), size=3, alpha=0.7,color=colors)

kor.map
