#install.packages("raster")
#install.packages("sp")
install.packages("timevis")
library(timevis)
data<-data.frame(
  id=1:4,
content= c("Item one", "Item two", "Ranged Item", "Item four"), 
start = c("2018-01-10", "2018-01-11","2018-01-20", "2019-02-14 15:00:00"),
end = c(NA, NA, "2018-12-04", NA))

xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

#import folders

install.packages("devtools", dependencies=TRUE)
library(devtools)
getwd()

setwd("C:/Users/lenovo/Desktop/NATHA usb/Programacion EAGLE")
create(Christmaspackage)


xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

fieldata_wide<-read.table (header=TRUE, text='
plot_id name Cover LAI DBH
  1 Sophie 79   2.3  1.7
  2 Achmed 63   0.6  1.1
  3 Achmed 95   3.1  1.8
  4 Sophie 11   3.4  1.9
')

fieldata_wide
fielddata_wide$plot_id <- factor(fielddata_wide$plot_id)

install.packages("reshape2")
library(reshape2)
melt(fielddata_wide, id. vars=c("plot_id", "name"))

xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

#pipe operatos
install.packages("log")
library(log)
library(timevis)
log(2)
2%>%log()

log(27)
27%>%log()

round(2,6)
2%>%round(6)

dataset%>%
subset(column2>5)%>%  
aggregate(.)

xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

#S/Lapply example

sapply(1:3, function(x)x^2)
lapply(1:3, function(x)x^2)

sapply(1:3, function(x)x^2)
lapply(1:3, function(x)x^2)

x<- list (a=1:10, beta=exp(-3:3), logic=c(TRUE, FALSE, FALSE, TRUE))
lapply(x, mean)



xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
#Steigerwald Raster to Data Frame

install.packages(raster)
diftime("2018-12-24",Sys.Date(), units="days")
install.packages(diftime)
difftime("2018-12-24", Sys.Date(), units="days")
install.packages("raster")
library(raster)
germany<- getData("GADM", country='DEU', level=2)
plot (germany)
prec<- getData("worldclim", var="prec", res=.5, lon=10,lat=51)
plot(prec)
prec_ger1<-crop(prec, germany)
spplot(prec_ger1)
prec_ger2<- mask(prec_ger1, germany)
spplot(prec_ger2)
prec_avg<-cellStats(prec_ger2, stat="mean")

switzerland<- getData("GADM", country="CHE", level=2)
plot(switzerland)
prec<- getData("worldclim", var="prec", res=.5,lon=10, lat=51)
plot(prec)
prec_swit1<-crop(prec, switzerland)
spplot(prec_swit1)
prec_swit2<-mask(prec_swit1, switzerland)
spplot(prec_swit2)
prec_avg<- cellStats(prec_swit2, stat="mean")

