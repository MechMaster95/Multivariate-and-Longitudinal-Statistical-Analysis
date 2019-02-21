#####################################################################################
# 1Q) Examine the USJudgeRatings data in the datasets library. This dataset contains 
# the ratings of 43 US Superior Court judges by attorneys. Each of the judges is evaluated 
# on each of 12 attributes such as demeanor, preparation for trial, sound rulings, and the 
# number of contacts each attorney had with that judge. See the R help file for more 
# information on this dataset.


library('datasets')
data_<-USJudgeRatings
#visulaising the datasetusing pairs plot
pairs(data_,pch=19,col="#990000")
#visualising the dataset using correlation matrix
library(GGally)
ggcorr(data_, low = "#3B9AB2", mid = "#FFFFFF", high = "#990000",label = T, label_color = "black",label_size = 3, label_round = 3)

#to check if dataset has similar standard deviations, if not we need to 
#standardize them
apply(data_,2,sd)
##scaling
std.data_<-scale(data_,center=T,scale=T)

#Performing PCA

data_.pca<- prcomp(std.data_)
summary(data_.pca)

lambda<- data_.pca$sdev^2
plot(lambda, type="b", pch = 19, main = "Variance explained by each PC",
     xlab = "PC number", ylab = "Variance explained")

#first two components explain 93.6% of variability, so we can retain those two
#since the loadings are the same as eigen vectors

a<-round(data_.pca$rotation,3)
a[,1:2]
####Interpreting the loadings of the PCs
####(i)First eigen shows component for every variable except CONT and second the PC 
####shows the opposite to the first
####(ii)the same can be observed in the first plot where cont does not show any correlation

###We can see from the matrix in part(a) that the covariance of cont with the rest\
###of the variables is negligible. Hence the variance defined by CONT variable will have 
####have to be defined by a PC which has high weightage to the CONT variable. This 
###can be confirmed with the PC loadings 
