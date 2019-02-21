dat <- read.table("T4-3.DAT.txt", header = F) 
colnames(dat) <- c("x1", "x2", "x3", "x4", "d2")

n <- nrow(dat)
p <- ncol(dat) - 1

# snapshot
head(dat)

std.data <- scale(dat[, 1:4], scale = T)
data.pca <- prcomp(std.data)
summary(data.pca)

data.pca$x
pairs(data.pca$x,pch=19)



