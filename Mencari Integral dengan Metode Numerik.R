# Dengan Cara Simpsons 1/3

#hitunglah integral a=1.8 , b=3.4  untuk eˆx yaitu Exsponen

h <- 0.2
x <- c(1.8, 2, 2.2, 2.4, 2.6, 2.8, 3, 3.2, 3.4)
fx <- exp(x)

ganjil <- 0
genap <- 0
for (i in 2:8) {
  if (i %% 2 == 0) {
    genap = genap + fx[i]
  } else {
    ganjil = ganjil + fx[i]
  }
}
genap = genap * 2
ganjil = ganjil * 4

l <- h / 3 * (fx[1] + ganjil + genap + fx[9])
l

# Dengan Cara Simpsons 3/8
# untuk n yang ganjil
a <- 0
b <- 1
h <- 0.11111
n <- round((b-a)/h, 1)
x <- c(0.11111, 0.22222, 0.33333, 0.44444, 0.55555, 
       0.66666, 0.77777, 0.88888, 0.99999 )

f <- function(x) {
  return(1/(x+1))
}

fx <- f(x)

#untuk simpsons 3/8
notk3 <- 0
k3 <- 0

for (i in 2:n-1) {
  if (i %% 3 == 0 && i != n ) {
    k3 <- k3 + fx[i]
  } else {
    notk3 <- notk3 + fx[i]
  }
}

# Untuk Simpsons 1/3
ganjil <- 0
genap <- 0
for (i in 2:n-1) {
  if (i %% 2 == 0) {
    genap = genap + fx[i]
  } else {
    ganjil = ganjil + fx[i]
  }
}

#Penjumlahan Untuk Trapesium
jumlah <- 0
for (i in 2:n-1) {
  jumlah <- jumlah + fx[i]
}

#menggunakan simpsons 3/8
s3 <- (3*h)/8*(f(0) + 2*k3 + 3*notk3 + fx[n])
s3

#menggunakan simpsons 1/3
s1 <- h / 3 * (f(0) + 4*ganjil + 2*genap + fx[n])
s1

# menggunakan trapesium
tps <- h/2*(f(0) + 2*jumlah + fx[n])
tps


#belajar setting digit
options(digits = 5)
x <- 1.128347132904321674821
x

integrate()


