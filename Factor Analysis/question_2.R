library(sem)
lt <- readMoments("EverittEx5.5.txt", diag = T)
R <- (lt + t(lt)) - diag(1, 6)
colnames(R) <- c("French", "English", "History", "Arithmetic", "Algebra", "Geometry")
rownames(R) <- c("French", "English", "History", "Arithmetic", "Algebra", "Geometry")

library(corrplot)
library(psych)
corrplot(R)

#model fit-1
model.1<-fa(r=R,nfactors = 2,n.obs = 220,fm = "ml",rotate = "none")
model.1$loadings
###We can see that factors here are not very much interpretable
#model fit-2
model.2<-fa(r=R,nfactors = 2,n.obs = 220,fm = "ml",rotate = "varimax")
model.2$loadings
####after rotation of the factors we can make clear interpretations that
####the first factor focuses more on the arthmetic abilities and the second factor
#### focusses more on the linguistic abilities
factanal(covmat =R,factors = 2,n.obs = 220)#R:
#### From the P-value we can clearly see that that the model is a good fit for the data
#### since p>0.05(by a very huge margin)