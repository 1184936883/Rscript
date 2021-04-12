library(rworldmap)
data(countryExData)
sPDF<-joinCountryData2Map(countryExData,joinCode="ISO3",nameJoinColumn="ISO3V10")

View(countryExData)
mapDevice()
mapCountryData(sPDF,nameColumnToPlot='PM10')
op<-palette(c('green','yellow','orange','red'))
cutVector<-quantile(sPDF$PM10,na.rm=TRUE)
sPDF$category<-cut(sPDF$PM10, cutVector, include.lowest=TRUE)
levels(sPDF$category)<-c('low','med','high','vhigh')
mapCountryData(sPDF,nameColumnToPlot='category',catMethod='categorical',mapTitle='世界PM10分布',colourPalette='palette',oceanCol='lightblue',missingCountryCol='white')

newdata<-iris[c(1:100),]
str(newdata)

