1.Consider the [lumber stiffness data] used in class to assess multivariate normality. Load the data in R and remove the two rows that might be outliers.
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


2. Consider the skulls dataset in the HSAUR3 package in R you considered in HW #1. You will first need to install the package in R to access the dataset. Use ?skulls command to get more details on the data. A snapshot of the data is shown below.
library(HSAUR3)
Loading required package: tools
head(skulls)


Create a pairs-plot. Do you see any unusual patterns?
Create chi-square plot and overlay a 45 degrees digonal line (e.g. a line with zero intercept and slope 1; the function abline() will be useful). Comment on the plot. [Hint: Do not over-interpret a single point.]
Create a new dataset where you add the z-scores for each variable as well as the sample Mahalanobis distances as columns (as was done in class). Consider the two data points with highest distance values (these are not necessarily outliers), and comment on their z-scores.
Perform univariate Shapiro-Wilk tests and multivariate Royston tests on the dataset.


3.  Perform the following tasks related to bvariate normal distribution. You need to install the R package  mnormt, and then load the package by calling librart(mnormt) command. The function rmnorm() in the mnormt library generates random samples from a multivariate normal. Use ?rmnorm() to open the documentation and read how to use it.
Generate 100 data points from a bivariate normal distribution such that E(X1)=1, E(X2)=2, var(X1)=1, var(X2)=2 and cov(X1,X2)=1. [Hint: you need to write iut the mean vector μ and covariance matrix Σ to use them in the R function.]

Make a scatter plot of the generated data, and overlay data ellipses (50% and 95%). What pattern would you expect to see in the scatterplot?

Now consider a new variable Y=X1+X2. Explicitly write down the distribution of Y; clearly specify the distribution and its parameters to get full credit.

From the sample you generated in (a), compute observations of Y, draw a histogram of these values, and overlay the PDF of the distribution you obtained in part (c) on the histogram. What pattern do you expact to see? Does you expectation match with what you see in the plot? Explain. [Hint: the function dnorm() can be used to compute the PDF of a normal distribution.]ny unusual patterns?
Create chi-square plot and overlay a 45 degrees digonal line (e.g. a line with zero intercept and slope 1; the function abline() will be useful). Comment on the plot. [Hint: Do not over-interpret a single point.]
Create a new dataset where you add the z-scores for each variable as well as the sample Mahalanobis distances as columns (as was done in class). Consider the two data points with highest distance values (these are not necessarily outliers), and comment on their z-scores.
Perform univariate Shapiro-Wilk tests and multivariate Royston tests on the dataset.


3.  Perform the following tasks related to bvariate normal distribution. You need to install the R package  mnormt, and then load the package by calling librart(mnormt) command. The function rmnorm() in the mnormt library generates random samples from a multivariate normal. Use ?rmnorm() to open the documentation and read how to use it.
Generate 100 data points from a bivariate normal distribution such that E(X1)=1, E(X2)=2, var(X1)=1, var(X2)=2 and cov(X1,X2)=1. [Hint: you need to write iut the mean vector μ and covariance matrix Σ to use them in the R function.]

Make a scatter plot of the generated data, and overlay data ellipses (50% and 95%). What pattern would you expect to see in the scatterplot?

Now consider a new variable Y=X1+X2. Explicitly write down the distribution of Y; clearly specify the distribution and its parameters to get full credit.

From the sample you generated in (a), compute observations of Y, draw a histogram of these values, and overlay the PDF of the distribution you obtained in part (c) on the histogram. What pattern do you expact to see? Does you expectation match with what you see in the plot? Explain. [Hint: the function dnorm() can be used to compute the PDF of a normal distribution.]