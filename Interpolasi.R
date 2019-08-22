#CONTOH LAGRANGE DERAJAT 2
#Xk
x0 <- 2
x1 <- 2.75
x2 <- 4

y0 <- 1.5709
y1 <- 1.5727
y2 <- 1.5751

#f(3)
x <- 3

#f(Xk)=1/Xk
fxk <- function(x) {
  return(1/x)
}

l0 <- ((x-x1)*(x-x2))/((x0-x1)*(x0-x2))
l1 <- ((x-x0)*(x-x2))/((x1-x0)*(x1-x2))
l2 <- ((x-x0)*(x-x1))/((x2-x0)*(x2-x1))

#p <- (fxk(x0)*l0)+(fxk(x1)*l1)+(fxk(x2)*l2)
p <- (y0*l0)+(y1*l1)+(y2*l2)

# Soal no 2

x0 <- 0
x1 <- 0.6
x2 <- 0.9

x <- 0.45

fxk <- function(x) {
  return(cos(x))
}

l0 <- ((x-x1)*(x-x2))/((x0-x1)*(x0-x2))
l1 <- ((x-x0)*(x-x2))/((x1-x0)*(x1-x2))
l2 <- ((x-x0)*(x-x1))/((x2-x0)*(x2-x1))

p <- (fxk(x0)*l0)+(fxk(x1)*l1)+(fxk(x2)*l2)


# Soal no 3

p <- (fxk(x0)*l0)+(fxk(x1)*l1)+(fxk(x2)*l2)
#cara mengecek jawaban benar adalah cek apakah nilainya mendekati
#yaitu p mendekati hasil dari log(x+1)

X <- c(0,0.6,0.9)
l <- function(x, k, n, xi) {
  k <- 3
  n <- length(X)
  xi <- 0
  for (i in 1:n) {
    for (j in 1:n) {
      if(i != k && xi == NULL) {
        xi <- (x-X[j+1])/(X[i]-X[j+1])
    } else {
        xi <- xi * (x-X[j+1])/(X[i]-X[j+1])
      }
    }
    print(xi)
  }
}

l(0.45)


