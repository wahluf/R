#example based on table 8.2
x <- 1:10
y <- c(1.3, 3.5, 
       4.2, 5, 7,
       8.8, 10.1,
       12.5, 13,
       15.6)

#using Equations (8.1) and (8.2) page 500, to find a0 and a1.
#we get a1 = 1.538 and a0 = -0.36

plot(x, y, type = "p")
fx <- function(x) {
  return(1.538 * x - 0.36)
}
lines(x, sapply(x, fx), type="p", col="red")
py <- sapply(x, fx)
E <- sum((y - py)^2)

E <- 0
for (i in 1:length(y)) {
  E <- E + (y[i] - fx(x[i]))^2
}

#example based on table 8.3

xi <- c(0, 0.25, 0.50, 0.75, 1)
yi <- c(1, 1.2840, 1.6487, 2.1170, 2.7183)

sum_xi0 <- sum(xi^0)
sum_xi1 <- sum(xi^1)
sum_xi2 <- sum(xi^2)
sum_xi3 <- sum(xi^3)
sum_xi4 <- sum(xi^4)

sum_yixi0 <- sum(yi * xi^0)
sum_yixi1 <- sum(yi * xi^1)
sum_yixi2 <- sum(yi * xi^2)


A <- matrix(c(5, 2.5, 1.875,
              2.5, 1.875, 1.5625,
              1.875, 1.5625, 1.3828), 3, 3, TRUE)

b <- c(8.7680, 5.4514, 4.4015)

x <- solve(A) %*% b
