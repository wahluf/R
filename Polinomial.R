# Materi Polinomial

#ini dari soal
i <- c(1,2,3,4,5)
x <- c(0,0.25,0.5,0.75,1)
y <- c(1,1.2840,1.6487,2.1170,2.7183)

#f2(x) = a2*x^2 + a1*x^1 + 3

#library(Ryacas)
#a0 <- Sym("a0")
#a1 <- Sym("a1")
#a2 <- Sym("a2")
#a3 <- Sym("a3")
#a4 <- Sym("a4")

#per1 <- a0*sum(x^0)+a1*sum(x^1)+a2*sum(x^2)
#per2 <- a1*sum(x^1)+a2*sum(x^2)+a3*sum(x^3)
#per3 <- a2*sum(x^2)+a3*sum(x^3)+a4*sum(x^4)
#ma <- matrix(c(5,2.5,1.875, 2.5, 1.875, 1.5625, 1.875, 1.5625, 1.3828125), 3, 3, TRUE)
# yang saya comment diatas, itu cara manual. kurang effisien.


#Untuk Matrix 1
a0 <- sum(x^0)
a1 <- sum(x^1)
a2 <- sum(x^2)
a3 <- sum(x^3)
a4 <- sum(x^4)

#Untuk Matrix 2
hp1 <- sum(y*x^0)
hp2 <- sum(y*x^1)
hp3 <- sum(y*x^2)

#Matrix 1 dari dari 3 persamaan
ma <- matrix(c(a0, a1, a2,
               a1, a2, a3,
               a2, a3, a4), 3, 3, TRUE)

#Matrix 2
mb <- matrix(c(hp1,hp2,hp3)) 

#Mencari Hasil
solve(ma) %*% mb
# atau
solve(ma, mb)

fx <- function(x)
  result <- 1.005137 + 0.8641829 + 0.8436571
return(result)

plot(x, y)

lines(seq(0.1, 0.2))
