###########Question 4
#####################################################################################
# 4Q) Consider the heptathlon data in the HSAUR3 package. See  ?heptathlon for details 
# about the dataset.
#####################################################################################
# 4a) Take only the first seven columns representing the seven events. Notice that in 
# the events high jump, long jump, shot and javelin, larger values indicate better 
# performance. But for the other three events (200m, 800m, and hurdles) smaller values 
# indicate better performance. To help with interpretation, transform the data of the 
# latter three events as "newx <- max(x) - x" so that for all the variables larger values 
# indicate better performance. Visualize the correlation matrix and comment on any pattern 
# you see

data("heptathlon", package = "HSAUR3")
a=heptathlon[,8]
heptathlon[,8]=NULL
heptathlon[,1]<-(max(heptathlon[,1])-heptathlon[,1])
heptathlon[,4]<-(max(heptathlon[,4])-heptathlon[,4])
heptathlon[,7]<-(max(heptathlon[,7])-heptathlon[,7])
library(GGally)
ggcorr(heptathlon, low = "#3B9AB2", mid = "#FFFFFF", high = "#990000",label = T, label_color = "black",label_size = 3, label_round = 3)

##we can observe obvious patterns or high corr scores for sports of similar nature
##but also we can see the correlation between sports of different natures like shot and longjump
##########
#####################################################################################
# 4b) Perform PCA on the new dataset. Summarize and interpret the results, especially 
# the first two PCs. Note that you might need to standardize the data.

std.data_4<-scale(heptathlon,center=T,scale=T)
dat_4.pca<-prcomp(std.data_4)
summary(dat_4.pca)
round(dat_4.pca$rotation[,1:2],3)
#####We can observe in the first PC that there except for javelin, the rest of the variables
#####have significant components.(which i think reflects the core and cardio strength)
####the second PC has a huge javelin component.(which i think reflects the upper body strength) 


#####################################################################################
# 4c) Compute the PC scores for the first two PCs and create a scatterplot. Do you see 
# any pattern? If yes, investigate further and comment on your findings.
par(mfrow=c(1,2))
plot(dat_4.pca$x[,2:1],pch=19)
library(car)
dataEllipse(dat_4.pca$x[,2:1], pch=19, col=c("steelblue","#990000"),lty=2,ellipse.label=c(0.5,0.95),levels=c(0.5,0.90),fill=TRUE,fill.alpha=0.1)
###############
##Observation: Except for an outlier the rest of the data cloud seems to be centered at around the mean
###############

#4d) The last column of the heptathlon dataset provides the official scores given to 
# the athletes for the event. Note that your PCA did not involve the score information at 
# all. Consider PC1 (a summary of the performance). Plot the official scores versus your 
# PC1 scores in a scatterplot. Do you think your summary of performance, PC1, aligns with 
# the official scores? Comment on your findings.
plot(a,dat_4.pca$x[,1],xlab = 'Official_scores',ylab = 'PCA_1',pch=19)

