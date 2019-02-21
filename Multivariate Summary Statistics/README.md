
Problem Statements


1. Let x=(5,1,3)T and y=(−1,3,1)T be two 3×1 column vectors.
Find the length of x and y (Do this by hand)
Find xTy (Do this by hand)
Are x and y orthogonal? Explain.
Repeat (a) and (b) using R. Provide code and output.


2. You are given a random vector X=[X1,X2,X3,X4]T with the mean vector μ=[4,3,2,1]T, and the variance-covariance
Find E(X) and E(AX).
Find cov(AX).


3. Consider the iris data available in R.
Construct side-by-side boxplots of the four quantitative variables (SL, SW, PL, PW) for each species. Do not forget to properly label the axes and give a proper title to the plots when needed. [Hint: your will have 3 plots, one for each species. Each plot will contain four boxplots. See the function boxplot() in R]

Construct a pairs-plot of the four variables for each of the three species.

Define the vector x=[Sepal.Length,Sepal.Width,Petal.Length,Petal.Width]T. The dataset have 50 observations of this vector (one for each flower), and with 3 species. Thus, we have a sample x1,…,xn of size n=50 for each of the three species. Compute the sample mean x¯ (a 4×1 vector), the sample covariance matrix S (a 4×4 matrix) and the sample correlation matrix R (a 4×4 matrix) for each species.

Looking at the pairs plot in (b) and the correlation matrices in (c), do you see any patterns or differences among the species? Explain.



4) Consider the skulls dataset in the HSAUR3 package in R. You will first need to install the package in R to access the dataset. Use ?skulls command to get more details on the data. A snapshot of the data is shown below.
library(HSAUR3)
Suppose we want to estimate the population mean of all the 4 variable for skulls with epoch c4000BC. Write down the population, parameter, the sample and the statistic you will use to answer the question above.
From the skulls data set, provide an estimate (numeric value) of the parameter mentioned above. Explain how you obtained it.
Now suppose we want to estimate the population variance-covariance matrix. When estimator will you use? Provide a numeric estimate.
Compute the variance covariance matrix of the estimator of the population mean in part (b).
Provide an estimate for the parameter vector (μmb−μnh,μbh−μnh)T and compute the covariance matrix of the estimator.

Plots obtained for the objectives above

![alt text](https://github.com/MechMaster95/Multivariate-and-Longitudinal-Statistics/blob/Mulitvariate-Summary-Statistics/q1.png)

![alt text](https://github.com/MechMaster95/Multivariate-and-Longitudinal-Statistics/blob/Mulitvariate-Summary-Statistics/q2.png)




