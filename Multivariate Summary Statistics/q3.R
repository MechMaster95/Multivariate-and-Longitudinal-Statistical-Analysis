####Question 3#######
library(mnormt)
var_=cbind(c(1,1),c(1,2))
a=rmnorm(100,mean=c(1,2),varcov=var_,sqrt=NULL)
library(car)
dataEllipse(a[,1], a[,2], 
            xlim = c(-4, 8), ylim = c(-4, 8), 
            pch=19, col = c("steelblue", "#990000"), lty=2,
            ellipse.label=c(0.5, 0.95), levels = c(0.5, 0.95),
            fill=TRUE, fill.alpha=0.1)
Y<- a[,1]+a[,2]
hist(Y)
m<-mean(Y)
v<- var(Y)

#3d
std<-sqrt(v)
hist(Y,col="light blue",main="Histogram of Y",freq=F)
curve(dnorm(x,mean=m,sd=std),-5,20, add=T,col= "red")


#####Q4#### --part b
library(mnormt)
var_cov = cbind(c(2,1,1),c(1,1,1),c(1,1,3))
r_new <- rmnorm(100,mean=c(1,2,3),varcov=var_cov,sqrt=NULL)
cor(r_new)
scaled <- scale(r_new) 
cov(scaled)

