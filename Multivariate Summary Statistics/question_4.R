mydata = read.csv("mileage.csv",header = T)
mydata<-as.numeric(unlist(mydata))
par(mfrow=c(1,2))  # set plot window to 1x2 plots           
hist(mydata,breaks=20,col="green") # see shape of distribution
qqnorm(mydata)
qqline(mydata,col="red")

smpl=sample(mydata,30)
ucl=mean(smpl)+1.96/sqrt(30)  # calculate upper and lower confidence limits
lcl=mean(smpl)-1.96/sqrt(30)
cvr=if(lcl<=0 & ucl>=0)
  
result=c(lcl,ucl,cvr)
result



replicates=100
# generate 100 samples and 95% CIs
lcl.array=rep(0,replicates)
ucl.array=rep(0,replicates)
for(i in 1:replicates){
  smpl=sample(mydata,30)   # sample n observations without replacement
  ucl.array[i]=mean(smpl)+1.96/sqrt(n)  # calculate upper and lower confidence limits
  lcl.array[i]=mean(smpl)-1.96/sqrt(n)
}

# Plot CIs, use red if mean outside interval
outside <- ifelse(lcl.array>0 | ucl.array<0, 2, 1)
par(mfrow=c(1,1))
plot(c(0, 0), c(1, replicates), col="black", typ="l",
     ylab="Samples",
     xlab="Confidence Interval",
     main="95% CI Coverage")
segments(lcl.array, 1:replicates, ucl.array, 1:replicates,
         col=outside,lwd=3,lty=outside)

base.smpl=smpl

exact=c(mean(base.smpl)-qt(0.025,30-1,lower.tail=F)*sd(base.smpl)/sqrt(30),
        mean(base.smpl)+qt(0.025,30-1,lower.tail=F)*sd(base.smpl)/sqrt(30))
exact







