# Objectives

1.  Consider the [hemangioma data] discussed in class.
Examine the marginal distributions of genetic markers in the hemangioma data. Which of these appear to be normally distributed? Identify both large and small outliers.

Perform an EFA after removing the outliers. Do you obtain same or different conclussions?



2. The [correlation matrix given below] arises from the scores of 220 boys in six school subjects: (1) French, (2) English, (3) History, (4) Arithmetic, (5) Algebra, and (6) Geometry. We wish to perform an EFA on this data.
library(sem)

lt <- readMoments("../data/EverittEx5.5.txt", diag = T)
R <- (lt + t(lt)) - diag(1, 6)
colnames(R) <- c("French", "English", "History", "Arithmetic", "Algebra", "Geometry")
rownames(R) <- c("French", "English", "History", "Arithmetic", "Algebra", "Geometry")
R

Find the two-factor solution from a maximum likelihood factor analysis with no rotation applied. Interpret the factors as best as you can.

Find the two-factor solution from a maximum likelihood factor analysis with varimax rotation applied. Interpret the factors as best as you can.

Do you think a two factor model is sufficient? Explain your answwer.

3. The [matrix below] shows the correlations between ratings on nine statements about pain made by 123 people suffering from extreme pain. Each statement was scored on a scale from 1 to 6, ranging from agreement to disagreement. 
Fit a correlated two-factor model in which questions 1, 3, 4, and 8 are assumed to be indicators of the latent variable Doctor’s Responsibility and questions 2, 5, 6, and 7 are assumed to be indicators of the latent variable Patient’s Responsibility.

Find a 95% confidence interval for the correlation between the two latent variables.

Note that, we get an estimate and standard error for each parameter. A 95% confidence interval can be computed as


## the following are the important plots for the above objectives

![alt text](https://github.com/MechMaster95/Multivariate-and-Longitudinal-Statistical-Analysis/blob/master/Factor%20Analysis/diagram.png)

![alt text](https://github.com/MechMaster95/Multivariate-and-Longitudinal-Statistical-Analysis/blob/master/Factor%20Analysis/q1.png)
![alt text](https://github.com/MechMaster95/Multivariate-and-Longitudinal-Statistical-Analysis/blob/master/Factor%20Analysis/q2.png)









