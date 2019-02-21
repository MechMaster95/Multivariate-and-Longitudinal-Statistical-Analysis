library(HSAUR3)
library(ggplot2)
library(GGally)

epochs<-skulls$epoch
skull_cov<- skulls[epochs=="c4000BC",2:5]
ggpairs(skull_cov,xlab="c4000BC")

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

chisquare.plot(x=skull_cov,mark = 2)
abline(0,1,col="blue")

# epochs<-skulls$epoch
# skull_cov<- skulls[epochs=="c4000BC",2:5]

z_col<- list()
#z_col<-matrix(list(),nrow=length(skull_cov$mb),ncol=4)
for (i in 1:4){
 z_col[i]<- list((scale(skull_cov[i])))
 skull_cov[i+4]<- z_col[i]
 #skull_cov<-cbind(z_col[-i],skull_cov)

}

colnames(skull_cov)<-c("mb","bh","bl","nh","Z_mb","z_bh","z_bl","z_nh")
skull_cov


sk<-skull_cov[,1:4]
s<-cov(sk)
x.cent <- scale(sk,center =T, scale = F)
d2<- diag(x.cent%*%solve(s)%*%t(x.cent))
skull_cov<-cbind(d2=d2,skull_cov)

apply(skull_cov[,2:5], 2, shapiro.test)
library(MVN)
mvn(skull_cov[, 2:5], mvnTest = "royston", multivariatePlot = "qq")

skull_cov



