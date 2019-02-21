#########Question 3
#####################################################################################
# 3a) Examine the standard deviations of each cancer type, including the overall rates.
data_3=read.table("C:/Users/Nadim/Desktop/ST537/HW_3/cancer_dataset.txt",header = T,row.names = 1)
pairs(data_3, pch=19, col="#990000")
library(GGally)
ggcorr(data_3, low = "#3B9AB2", mid = "#FFFFFF", high = "#990000",label = T, label_color = "black",label_size = 3, label_round = 3)
data_3.sd<-apply(data_3,2,sd)

#####################################################################################
# 3b) Do you think it is more appropriate to examine the covariance (i.e., use the 
# data matrix as it is) or the correlation (i.e., first standardize the data and then 
# compute covariance) in a principal components analysis of this data? Explain.
###Covariance deals with similarity of variables of same kinds of fields. Correlation 
### provides a metric for variables from even different fields
###Since the variables have diferent scales of std we standardise them
std.data_3<-scale(data_3,center=T,scale=T)
std.data_3

#####################################################################################
# 3c) Perform a principal components analysis on this dataset and report the results.
# Perform PCA
dat_3.pca<- prcomp(std.data_3)
# Extract the importance of each component
summary(dat_3.pca)
