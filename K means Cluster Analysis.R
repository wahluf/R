library(tidyverse)  # Library data manipulation
library(cluster)    # Library clustering algorithms
library(factoextra) # Lirary clustering algorithms & visualization
library(readxl)     # Library untuk membaca excedfll data type

df <- read.csv('Data 06 November 2020.csv')  # Untuk Membaca data uji
df <- na.omit(df)   # Untuk Menghapus Missing Value
df <- scale(df)     # Untuk Preprocessing Data
head(df)            # Untuk melakukan Preview Data

# ====== 1. Elbow Method ======
set.seed(1000)       # Random Number Generator
# function untuk komputasi total nilai wss (within-cluster sum of square) 
wss <- function(k) {
  kmeans(df, k, nstart = 25 )$tot.withinss
}
# komputasi dan pemetaan wss untuk k = 1 to k = 15
k.values <- 1:15

# ekstraksi wss untuk 1-15 clusters
wss_values <- map_dbl(k.values, wss)

# Visualisasi hasil perhitungan
plot(k.values, wss_values,
     type="b", pch = 19, frame = FALSE, 
     xlab="Number of clusters K",
     ylab="Total within-clusters sum of squares")

set.seed(1000)    # Random Number Generator
# menerapkan fviz_nbclust yang merupakan fungsi elbow method
fviz_nbclust(df, kmeans, method = "wss")


# ====== 2. Silhouette Method ======
# function untuk menghitung rata-rata nilai silhouette untuk k clusters
avg_sil <- function(k) {
  km.res <- kmeans(df, centers = k, nstart = 25)
  ss <- silhouette(km.res$cluster, dist(df))
  mean(ss[, 3])
}

# melakukan komputsi dan pemetaan wss untuk k = 2 hingga k = 15
k.values <- 2:15

# Ekstraksi nilai rata-rata silhouette untuk 2-15 clusters
avg_sil_values <- map_dbl(k.values, avg_sil)

plot(k.values, avg_sil_values,
     type = "b", pch = 19, frame = FALSE, 
     xlab = "Number of clusters K",
     ylab = "Average Silhouettes")
# sama dengan sebelumnya menerapkan fviz_nbclust 
# yang fungsinya juga dapat digunakan untuk Silhouette Method
fviz_nbclust(df, kmeans, method = "silhouette")

