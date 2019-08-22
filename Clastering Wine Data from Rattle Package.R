#install.packages('rattle')
data(wine, package = 'rattle')
summary(wine)


wine.new <- wine[,c(2:14)]
wine.clas <- wine[,"Type"]

results <- kmeans(wine.new, 4)

par(mfrow=c(2,2), mar=c(5,4,2,2))

plot(wine.new[, c(1,2)], col = results$cluster) # hasil dari plot
plot(wine.new[, c(1,2)], col = wine.clas) # class asli
plot(wine.new[, c(3,4)], col = results$cluster) # hasil dari plot
plot(wine.new[, c(3,4)], col = wine.clas) # 

table(results$cluster, wine.clas)
