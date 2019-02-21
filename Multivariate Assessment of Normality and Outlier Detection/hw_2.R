dat<- read.table("https://www.stat.ncsu.edu/people/maity/courses/st537-S2019/data/T4-3.DAT", header=F)
colnames(dat) <- c("x1", "x2", "x3", "x4", "d2")
n <- nrow(dat)
p <- ncol(dat)
head(dat)

######Question 1#######
i<-which(dat$d2==max(dat$d2))
dat <- dat[-c(i),]
j<-which(dat$d2==max(dat$d2))
dat<- dat[-c(j),]
dat$d2
max(dat$d2)

apply(dat[,1:4], 2, shapiro.test)
library(MVN)
mvn(dat[, 1:4], mvnTest = "royston", multivariatePlot = "qq")

chisquare.plot <- function(x,mark){
  p <- ncol(x)
  n<-nrow(x)
  xbar<- colMeans(x)
  s <- cov(x)
  
  ###Mahalonobis Dist
  
  x.cent <- scale(x,center =T, scale = F)
  d2<- diag(x.cent%*%solve(s)%*%t(x.cent))
  
  qchi <- qchisq((1:n-0.5)/n, df =p)
  sortd <- sort(d2)
  
  plot(qchi,sortd,pch=19,xlab="Chi-squared quantiles",ylab="Mahalonobis squared distance",main="chi-square Q-Q plot")
  
  points(qchi[(n-mark+1):n],sortd[(n-mark+1):n],cex=3,col="#990000")
  
  return((sortd[(n-mark+1):n]))
  }

  a<-chisquare.plot(x=dat[,1:4],mark = 2)
  a[1]
  a[2]
  # plot(dat$x1,dat$x2 ,
  # xlim = c(1000, 3500), ylim = c(800, 3000), 
  # pch=19, col = c("steelblue"))
  abline(0,1,col="blue")
  
  

  
  
