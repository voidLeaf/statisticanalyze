d<-read.csv('data.csv');
d<-data.frame(d)
y<-d[,2]
x1<-d[,4]
x2<-d[,5]
x3<-d[,6]
xf<-d[,7]
xin<-d[,8]
xbuilding<-d[,9]
xsale<-d[,10]
xtrans<-d[,11]
xeat<-d[,12]
xeco<-d[,13]
xother<-d[,14]
xresident<-d[,16]
xrealestate<-d[,21]
xexport<-d[,23]
ximport<-d[,24]
lm.sol<-lm(y~x1+x2+x3+xresident+xrealestate+xexport+ximport)

lm.step1 <-step(lm.sol)
lm.drop1 <-drop1(lm.step1)
summary(lm.sol)
plot(lm.sol)
summary(lm.step1)
summary(lm.drop1)
lm.sol<-lm(y~x3+xrealestate+xexport+ximport)
plot(y~x3+xrealestate+xexport+ximport)
abline(lm.sol,col='red')
summary(lm.sol)
plot(lm.sol)

