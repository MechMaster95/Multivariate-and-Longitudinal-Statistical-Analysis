######################
#####Question 1#######
######################

x<- c(5,1,3)
y<- c(-1,3,1)

length(x)
length(y)

######################
#####Question 3#######
######################
###Part (i)

iris
species <- iris$Species
setosa<- iris[species == "setosa",1:4]
versicolor<- iris[species =="versicolor",1:4]
virginica<- iris[species =="virginica",1:4]
par(mfrow=c(1,4))


for(i in 1:4){
  boxplot(setosa[i])
 }
par(mfrow=c(1,4))
for(i in 1:4){
  boxplot(versicolor[i])
}
par(mfrow=c(1,4))
for(i in 1:4){
  boxplot(virginica[i])
}

library(ggplot2)
library(GGally)
ggpairs(setosa)
ggpairs(versicolor)
ggpairs(virginica)


setosa_means<- colMeans(setosa)
versicolor_means<- colMeans(versicolor)
virginica_means<- colMeans(virginica)

setosa_covariance<- cov(setosa)
versicolor_covariance<- cov(versicolor)
virginica_covariance<- cov(virginica)

setosa_corr<- cor(setosa)
versicolor_corr<- cor(versicolor)
virginica_corr<- cor(virginica)


######################
#####Question 4#######
######################

library(HSAUR3)
head(skulls)

