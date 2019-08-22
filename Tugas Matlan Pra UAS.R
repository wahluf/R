# Jawaban no 2
xi <- c(1, 1.1, 1.3, 1.5, 1.9, 2.1)
yi <- c(1.84, 1.96, 2.21, 2.45, 2.94, 3.18 )

sum_xi0 <- sum(xi^0)
sum_xi1 <- sum(xi^1)
sum_xi2 <- sum(xi^2)
sum_xi3 <- sum(xi^3)
sum_xi4 <- sum(xi^4)
sum_xi5 <- sum(xi^5)
sum_xi6 <- sum(xi^6)

sum_yixi0 <- sum(yi * xi^0)
sum_yixi1 <- sum(yi * xi^1)
sum_yixi2 <- sum(yi * xi^2)
sum_yixi3 <- sum(yi * xi^3)

# 1 Degree
Ac <- matrix(c(sum_xi0, sum_xi1,
               sum_xi1, sum_xi2), nrow = 2, ncol = 2, TRUE)

Bc <- c(sum_yixi0, sum_yixi1)
xc <- solve(Ac) %*% Bc

#nilai belakang koma dibatasi
A <- matrix(c(6, 8.9,
              8.9, 14.17), nrow = 2, ncol = 2, TRUE)
B <- c(14.58, 22.80)

x <- solve(A) %*% B

# 2 Degree
A2c <- matrix(c(sum_xi0, sum_xi1, sum_xi2,
               sum_xi1, sum_xi2, sum_xi3,
               sum_xi2, sum_xi3, sum_xi4), nrow = 3, ncol = 3, TRUE)

B2c <- c(sum_yixi0, sum_yixi1, sum_yixi2)

x2c <- solve(A2c) %*% B2c

# nilai belakang koma dibatasi
A2 <- matrix(c(6, 8.9, 14.17,
              8.9, 14.17, 24.023,
              14.17, 24.023, 42.862), nrow = 3, ncol = 3, TRUE)

B2 <- c(14.58, 22.80, 38.09)

x2 <- solve(A2) %*% B2

# 3 Degree
A3c <- matrix(c(sum_xi0, sum_xi1, sum_xi2, sum_xi3,
               sum_xi1, sum_xi2, sum_xi3, sum_xi4,
               sum_xi2, sum_xi3, sum_xi4, sum_xi5,
               sum_xi3, sum_xi4, sum_xi5, sum_xi6), nrow = 4, ncol = 4, TRUE)

B3c <- c(sum_yixi0, sum_yixi1, sum_yixi2, sum_yixi3)

x3c <- solve(A3c) %*% B3c

# Nilai Belakang koma dibatasi
A3 <- matrix(c(6, 8.9, 14.17, 24.023,
              8.9, 14.17, 24.023, 42.8629,
              14.17, 24.023, 42.8629, 79.519,
              24.023, 42.8629, 79.519, 151.801), nrow = 4, ncol = 4, TRUE)

B3 <- c(14.58, 22.80, 38.09, 67.18)

x3 <- solve(A3) %*% B3

#====================================================================================#

# Jawaban no 4
library("optrees")
nodes <- 1:6
arcs <- matrix(c(1,2,1,
                  1,3,2,
                  2,3,1,
                  2,4,3,
                  2,5,2,
                  3,4,1,
                  3,5,2,
                  4,5,4,
                  4,6,3,
                  5,6,3), ncol = 3, byrow = TRUE)

result <- getShortestPathTree(nodes,
                              arcs,
                              algorithm="Dijkstra",
                              directed=TRUE)

