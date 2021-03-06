## Objectives

1. Consider the [lumber stiffness data] used in class to assess multivariate normality. Load the data in R and remove the two rows that might be outliers.
Perform univariate Shapiro-Wilk tests and multivariate Royston tests on the new dataset.
Create a new chi-square plot.
Discuss the results you fond in part (a) and (b).


2. Consider the skulls dataset in the HSAUR3 package in R you considered in HW #1. You will first need to install the package in R to access the dataset. Use ?skulls command to get more details on the data. A snapshot of the data is shown below.
library(HSAUR3)
Loading required package: tools
head(skulls)


Create a pairs-plot. Do you see a1.Consider the [lumber stiffness data] used in class to assess multivariate normality. Load the data in R and remove the two rows that might be outliers.
Perform univariate Shapiro-Wilk tests and multivariate Royston tests on the new dataset.
Create a new chi-square plot.
Discuss the results you fond in part (a) and (b).


3.  Perform the following tasks related to bvariate normal distribution. You need to install the R package  mnormt, and then load the package by calling librart(mnormt) command. The function rmnorm() in the mnormt library generates random samples from a multivariate normal. Use ?rmnorm() to open the documentation and read how to use it.
Generate 100 data points from a bivariate normal distribution such that E(X1)=1, E(X2)=2, var(X1)=1, var(X2)=2 and cov(X1,X2)=1. [Hint: you need to write iut the mean vector μ and covariance matrix Σ to use them in the R function.]

Make a scatter plot of the generated data, and overlay data ellipses (50% and 95%). What pattern would you expect to see in the scatterplot?

Now consider a new variable Y=X1+X2. Explicitly write down the distribution of Y; .
## Important Plots obtained for this study
![alt text](https://github.com/MechMaster95/Multivariate-and-Longitudinal-Statistical-Analysis/blob/master/Principal%20Component%20Analysis/q1.jpg)
![alt text](https://github.com/MechMaster95/Multivariate-and-Longitudinal-Statistical-Analysis/blob/master/Principal%20Component%20Analysis/q2.png)
![alt text](https://github.com/MechMaster95/Multivariate-and-Longitudinal-Statistical-Analysis/blob/master/Principal%20Component%20Analysis/q3.jpg)
![alt text](https://github.com/MechMaster95/Multivariate-and-Longitudinal-Statistical-Analysis/blob/master/Principal%20Component%20Analysis/q5.png)





