#######Question 2
library('datasets')
data_<-Harman23.cor
dat_<-Harman23.cor$cov
pairs(dat_,pch=19)
library(GGally)
ggcorr(dat_, low = "#3B9AB2", mid = "#FFFFFF", high = "#990000",label = T, label_color = "black",label_size = 3, label_round = 3)
##Since we already have the covariance matrix we need not scale

eig.out<-eigen(dat_)
str(eig.out)
#retain only the first two PCs?
lam <- eig.out$values

tab <- rbind(lam,
             lam/sum(lam), # proportion of variance explained
             cumsum(lam)/sum(lam)) # cumulative proportion of var explained
rownames(tab) <- c("Variance", "Proportion of variance", "Cumulative proportion")

###The frst PC Vector kind of represents overall body metrics
###IN the Second PC vector, the first half represents body lengths and the second
### half represents the body girth measurements()

#########Question 3
data_3=read.table("C:/Users/Nadim/Desktop/ST537/HW_3/cancer_dataset.txt",header = T,row.names = 1)
data_3.sd<-apply(data_3,2,sd)
std.data_3<-scale(data_3,center=T,scale=T)
std.data_3
dat_3.pca<- prcomp(std.data_3)
summary(dat_3.pca)
###Covariance deals with similarity of variables of same kinds of fields. Correlation 
### provides a metric for variables from even different fields

#####Since we have different cancer types the metrics maybe different. Hence 
#####I think it would better if we use correlation

###########Question 4
###in some variables high values indicate better performances and in some lower values represent better performances
data("heptathlon", package = "HSAUR3")
a=heptathlon[,8]
heptathlon[,8]=NULL
heptathlon[,1]<-(max(heptathlon[,1])-heptathlon[,1])
heptathlon[,4]<-(max(heptathlon[,4])-heptathlon[,4])
heptathlon[,7]<-(max(heptathlon[,7])-heptathlon[,7])
ggcorr(heptathlon, low = "#3B9AB2", mid = "#FFFFFF", high = "#990000",label = T, label_color = "black",label_size = 3, label_round = 3)
##we can observe obvious patterns or high corr scores for sports of similar nature
##but also we can see the correlation between sports of different natures like shot and longjump
##########
#are correlation matrices standardised
std.data_4<-scale(heptathlon,center=T,scale=T)
dat_4.pca<-prcomp(std.data_4)
summary(dat_4.pca)
dat_4.pca$rotation
#####We can observe in the first PC that there except for javelin, the rest of the variables
#####have significant components.(which i think reflects the core and cardio strength)
####the second PC has a huge javelin component.(which i think reflects the upper body strength) 
par(mfrow=c(1,2))
plot(dat_4.pca$x[,2:1],pch=19)
library(car)
dataEllipse(dat_4.pca$x[,2:1], pch=19, col=c("steelblue","#990000"),lty=2,ellipse.label=c(0.5,0.95),levels=c(0.5,0.90),fill=TRUE,fill.alpha=0.1)
plot(a,dat_4.pca$x[,1],xlab = 'Official_scores',ylab = 'PCA_1',pch=19)



