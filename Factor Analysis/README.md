Problems

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



3. The [matrix below] shows the correlations between ratings on nine statements about pain made by 123 people suffering from extreme pain. Each statement was scored on a scale from 1 to 6, ranging from agreement to disagreement. The nine pain statements were as follows:
Whether or not I am in pain in the future depends on the skills of the doctors.
Whenever I am in pain, it is usually because of something I have done or not done.
Whether or not I am in pain depends on what the doctors do for me.
I cannot get any help for my pain unless I go to seek medical advice.
When I am in pain, I know that it is because I have not been taking proper exercise or eating the right food.
People’s pain results from their own carelessness.
I am directly responsible for my pain,
relief from pain is chiefly controlled by the doctors.
People who are never in pain are just plain lucky.
lt <- readMoments("../data/EverittEx7.1.txt", diag = T)
R <- (lt + t(lt)) - diag(1, 9)
R2 <- R[-9, -9]
R2

Fit a correlated two-factor model in which questions 1, 3, 4, and 8 are assumed to be indicators of the latent variable Doctor’s Responsibility and questions 2, 5, 6, and 7 are assumed to be indicators of the latent variable Patient’s Responsibility.

Find a 95% confidence interval for the correlation between the two latent variables.

Note that, we get an estimate and standard error for each parameter. A 95% confidence interval can be computed as