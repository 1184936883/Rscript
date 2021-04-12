library(spocc)
library(dismo)
acaule = gbif("solanum", "acaule*", geo=FALSE) # 下载茄属植物种及亚种（*）
data(acaule) # 加载数据
dim(acaule) #查看行列数
colnames(acaule) #查看列名称
acgeo <- subset(acaule, !is.na(lon) & !is.na(lat)) #剔除没有经纬度记录
dim(acgeo) #查看剩下有经纬度记录数

acgeo[1:4, c(1:5,7:10)] #显示1-4行，1-5与7-10列
library(maptools) #加载制图包
data(wrld_simpl) #加载空间图形数据
plot(wrld_simpl, xlim=c(-80,70), ylim=c(-60,10), axes=TRUE, col="light yellow") 
#绘制空间图形
box() #给图形加边框
points(acgeo$lon, acgeo$lat, col='red', cex=0.75) # 在图形上添加有经纬度记录点

a<-1
a<-as.character(a)
a
is.numeric(a)
for (i in 1:9){
  string<-paste("learnR",i,"day",sep="")
  print(string)
}


for (i in 1:9){
  string<-paste("miss U",i,"day")
  print(string)}
paste(1:2)  

paste()
a<-paste(1:12)
print(a)
is.numeric(a)


d=data.frame(x1=1:5,x2=2:6,x3=3:7,x5=4:8)
t=c("x1","x3","x5")
d<-with(d,mget(t))
d





