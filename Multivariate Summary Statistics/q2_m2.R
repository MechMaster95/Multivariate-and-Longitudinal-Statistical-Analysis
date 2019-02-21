setwd("C:\\Users\\Nadim\\Desktop\\ST515-Exam")
whales=read.csv("C:\\Users\\Nadim\\Desktop\\ST515-Exam\\whales.csv",header=T)
whales<-as.numeric(unlist(whales))
####First part 
qqnorm(whales)
qqline(whales,col="red")
###Second Part
alpha.mom= mean(whales)/(((sum(whales^2)))/length(whales)+(mean(whales)^2))
row.mom= (((sum(whales^2))/length(whales))-(mean(whales)^2))/(mean(whales)^2)
beta.mom=1/row.mom
#### Third Part
hist(whales,breaks=20,freq=F)
install.packages("MASS")
library(MASS)
smpl.boot=sample(whales,length(whales),replace=T)
gamma.mle1=fitdistr(smpl.boot,"gamma",start=list(shape=alpha.mom,scale=beta.mom),hessian=F) 
summary(gamma.mle)
summary(gamma.mle1)
alphaMLE=gamma.mle1$estimate[1]
betaMLE=gamma.mle1$estimate[2]
x=seq(from = 0, to = 4, by = 0.01)
lines(x,dgamma(x,shape=alphaMLE,scale=betaMLE),lwd=2,col="red")
abline(v=quantile(whales,0.5),lty=2,lwd=2)
############Fourth Part
##Building Sampling distribution and estimating Standard Error
#n is the number of samples,taken a smaller sampling size for reducing computational costs
n=30
population=sample(whales,n,replace=T) 
B=5000 #run 5,000 bootstrap samples
amles=rep(0,B)
bmles=rep(0,B)
for(i in 1:B){
  rsample=sample(population,n,replace=T) 
  gamma.mle1=fitdistr(rsample,"gamma",start=list(shape=alpha.mom,scale=beta.mom),hessian=F) 
  amles[i]=gamma.mle1$estimate[1]
  bmles[i]=gamma.mle1$estimate[2]
}

##Fifth Part
alphaMLE_bar=mean(amles)
betaMLE_bar=mean(bmles)
par(mfrow=c(1,2))
hist(amles,breaks=100,freq=F)
hist(bmles,breaks=100, freq=F)
se_est1=sd(amles)
se_est2=sd(bmles)

####Sixth Part
#t-CI with Bootstap SE
tboot_alpha=c(mean(amles)-qt(0.05,n-1,lower.tail=F)*sd(amles),
              mean(amles)+qt(0.05,n-1,lower.tail=F)*sd(amles))
tboot_beta=c(mean(bmles)-qt(0.05,n-1,lower.tail=F)*sd(bmles),
             mean(bmles)+qt(0.05,n-1,lower.tail=F)*sd(bmles))    

# bootstrap percentile confidence interval
pctile_alpha=quantile(amles,probs = c(0.025,0.975))
pctile_beta=quantile(bmles,probs = c(0.025,0.975))
##Which ever gives the tighest range would be our best choice

