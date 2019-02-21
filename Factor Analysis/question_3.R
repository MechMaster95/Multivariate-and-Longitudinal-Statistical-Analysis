library(sem)
model.1<-specify.model(file="mode.txt.txt")
model.1

lt <- readMoments("EverittEx7.1.txt", diag = T)
R <- (lt + t(lt)) - diag(1, 9)
R2 <- R[-9, -9]
R2

doc_patient_sem<- sem::sem(model = model.1, S = R2, N = 123)
table<-summary(doc_patient_sem)

library(DiagrammeR)
pathDiagram(doc_patient_sem,ignore.double = FALSE, edge.labels = "both", file="fitted",output.type = "dot",node.colors = c("steelblue","transparent"))
grViz("fitted.dot")

###Create a confidence in
##lower limit
-0.3049759+(1.96* 0.10136386)
##Upper limit
-0.3049759-(1.96* 0.10136386)
