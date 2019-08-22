A <- matrix(c(30, 6, 5, 6, 30, 9, 5, 9, 30), nrow = 3)
x <- matrix(c(0,0,1), ncol = 1)

options(digits = 5)

iterasi <- 0
eigen_value <- 1

while (round(eigen_value) != round(max(A %*% x))) {
  print(round(eigen_value))
  x <- A %*% x
  eigen_value <- max(x)
  print(x)
  x <- x / eigen_value
  iterasi <- iterasi+1
  print(iterasi)
}

eigen_value
iterasi

round(43.497)
