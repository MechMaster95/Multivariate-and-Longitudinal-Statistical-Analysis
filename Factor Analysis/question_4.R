#a we can see 8 manifest variables
# 3 common factors
#b how to take the uniqueness from the partial output?
efa_result<-data.frame("Variables"=c("x1","x2","x3","x4","x5","x6","x7","x8"),
           "Factor1" = c(0.665,0,0.798,0.717,0,0,-0.218,0.810), 
           "Factor2" = c(-0.354,0.205,-0.127,0,0.318,0.831,0.594,0), 
           "Factor3" = c(0.167,0.664,0,-0.121,0.609,0.367,0.314,-0.366))

#Communality = Row sum of Manifest variables factors
efa_result$Communality<-(efa_result$Factor1)^2+(efa_result$Factor2)^2+(efa_result$Factor3)^2
#Uniqueness = 1 - Communality
efa_result$Uniqueness<-1-efa_result$Communality
efa_result$Communality
efa_result$Uniqueness
#c technically yes but no because the p-value lies on the border line
#d 0.289 and 0.457
#e****** factor 2  are sure of this?