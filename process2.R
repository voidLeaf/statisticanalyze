d<-read.csv('data2.csv');
d<-data.frame(d)
ls<-d[31,]
d<-d[-31,]
d.comp<-scale(d[,2:11], center=T,scale=T)
d.pr<-princomp(d.comp,cor=F)
screeplot(pr,type="lines")
summary(pr,loadings = T)
d.pr$loadings
d.newComp =  d.comp%*%prin$loadings[,1:5]
d.hc <- hclust( dist(d.newComp),method = "complete",members=NULL)
plot(d.hc,hang=-1,labels=d[,1])
rect.hclust(d.hc, k = 10)
d.km <- kmeans(d.newComp, 10)
d$kmclass<-d.km$cluster
d[,c(1,12)]
