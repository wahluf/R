library("datasets")
data("iris")
summary(iris)

#as we don't need the class labels
iris.new <- iris[,c(1,2,3,4)]
iris.clas <- iris[,"Species"]

#using k-mens
results <- kmeans(iris.new, 3)

results
results$betweenss
results$centers
results$iter

par(mfrow=c(2,2), mar=c(5,4,2,2))
plot(iris.new[, c(1,2)], col = results$cluster) #plot to se how
plot(iris.new[, c(1,2)], col = iris.clas)
plot(iris.new[, c(3,4)], col = results$cluster)
plot(iris.new[, c(3,4)], col = iris.clas)

table(results$cluster, iris.clas)

