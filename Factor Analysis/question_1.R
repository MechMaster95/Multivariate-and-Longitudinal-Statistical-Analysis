## Question 1 ## 
## part a ##
dat<- read.table("hemangioma.txt",header = TRUE)
scaled_dat <- scale(dat[, -1], scale = TRUE)

par(mfrow=c(3,3))
for(i in 1:7){
  qqnorm(scaled_dat[,i],main = paste0("Q-Q plot ",i),pch=19,cex=1.5)
  qqline(scaled_dat, col = "steelblue", lwd = 2)
}

## Creating data ellipse to detect outliers ##
  library(car)
  column7 <- dat[,7]
  column8 <- dat[,8]
  par(mfrow=c(1,1))
  dataEllipse(column7, column8, 
              xlim = c(-5,15), ylim = c(-30000, 40000), 
              pch=19, col = c("steelblue", "#990000"), lty=2,
              ellipse.label=c(0.5, 0.95), levels = c(0.5, 0.95),
            fill=TRUE, fill.alpha=0.1)

# Data point 11 seems to be the clear outlier 
# Therefore, removing that data point from the original data 
updated_dat <- dat[-11,]
updated_column7 <- updated_dat[,7]
updated_column8 <- updated_dat[,8]
par(mfrow=c(1,1))
dataEllipse(updated_column7, updated_column8, 
            xlim = c(-5,15), ylim = c(-30000, 40000), 
            pch=19, col = c("steelblue", "#990000"), lty=2,
            ellipse.label=c(0.5, 0.95), levels = c(0.5, 0.95),
            fill=TRUE, fill.alpha=0.1)

# Performing EFA
EFA_dat <- factanal(scaled_dat,factors=3)
EFA_dat
EFA_updated_dat <- factanal(updated_dat,factors=3)
EFA_updated_dat