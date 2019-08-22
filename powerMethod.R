A <- matrix(c(4, 1, 0,
              0, 2, 1, 
              0, 0, -1), 3, 3, TRUE)

#Coba juga matrik di bawah ini
#A <- matrix(c(30, 6, 5, 
#              6, 30, 9, 
#              5, 9, 30), 3,3,TRUE)


library("matlib")
#power method untuk mencari eigenvalue dan eigenvector
powerMethod(A)

#dengan nilai eigenvector awal {1,1,1}
powerMethod(A, v = c(1,1,1))






