#######Question 2
# 2Q) The dataset Harmon23.cor in the datasets package is a correlation matrix of eight 
# physical measurements made on 305 girls between the ages of 7 and 17.

library('datasets')
data_<-Harman23.cor
dat_<-Harman23.cor$cov

#####################################################################################
# 2a) Provide a plot to visualize this matrix, and comment on any patterns you see.

pairs(dat_,pch=19,col="#990000")
library(GGally)
ggcorr(dat_, low = "#3B9AB2", mid = "#FFFFFF", high = "#990000",label = T, label_color = "black",label_size = 3, label_round = 3)

#####################################################################################
# 2b) We want to perform PCA on this matrix (Harman23.cor$cov), and retain the first 
# two PCs. How can we do this? [Note: this is not the actual dataset, you only have 
# the correlation matrix of the variables.] 
# The function eigen() can compute the eigenvectors/eigenvalues
eig.out<-eigen(dat_)
str(eig.out)
#Eigen Values
lam <- eig.out$values
tab <- rbind(lam,
             lam/sum(lam), # proportion of variance explained
             cumsum(lam)/sum(lam)) # cumulative proportion of var explained
rownames(tab) <- c("Variance", "Proportion of variance", "Cumulative proportion")

# Eigenvalues (variance of PCs)
lambda <- tab[1,]
# scree plots
par(mfrow = c(1,2))
plot(lambda, type="b", pch = 19, main = "Variance explained by each PC",
     xlab = "PC number", ylab = "Variance explained")
# 2c) How much of the total variation is captured by each of the first two PCs? How 
# much of the total variation is captured by the two PCs together?

tab[3,1:2]

# 2d) Interpret the first two PCs.
###The frst PC Vector kind of represents overall body metrics
###IN the Second PC vector, the first half represents body lengths and the second
### half represents the body girth measurements()
