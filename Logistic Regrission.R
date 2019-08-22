mydata <- read.csv("https://stats.idre.ucla.edu/stat/data/binary.csv")
head(mydata)

logti_gre <- glm(admit~gre, data = mydata, family = "binomial")
summary(logti_gre)


#fungsi gre
f_gre <- function(x) {
  result <- 1 / (1 + exp(-(-2.901344 + 0.003582 * x)))
  return(result)
}

f_gre(700)

# 1. Compute model admit ~ gpa, and probability of being  admitted when gpa = 3.5
# 2. Compute model admit ~ rank, 
#   and probability of being  admitted when rank = 2. factor(mydata$rank)
# 3. Compute model admit ~ gre + gpa + rank, 
#   and probability admitted when gre = 750, gpa = 3.5, rank = 3.

#Jawaban no 1 ======================================================
no1 <- glm(admit~gpa, data = mydata, family = "binomial")
summary(no1)

f_gpa <- function(x) {
  result <- 1 / (1 + exp(-(-4.3576 + 1.0511 * x)))
  return(result)
}

f_gpa(3.5)

#Jawaban No 2 ======================================================
# merubah continus ke categorical   0 tidak leih kecil dari 1

mydata$rank <- factor(mydata$rank)
no2 <- glm(admit~rank, data = mydata, family = "binomial")
summary(no2)

f_rank <- function(rank2, rank3, rank4) {
  result <- 1 / (1 + exp(-(0.1643 
                           + rank2*-0.7500 
                           + rank3*-1.3647 
                           + rank4*-1.6867 )))
  return(result)
}

f_rank(1,0,0)

# Isi nilai sesuai parameter, atau dapat di definisikan seperti dibawah

f_rank(rank2 = 0, rank3 = 0, rank4 = 1)

# Jawaban No 3 ============================================================
no3 <- glm(admit~gre + gpa + rank, data = mydata, family = "binomial")
summary(no3)

f_all <- function(gre, gpa, rank2, rank3, rank4) {
  result <- 1 / (1 + exp(-(-3.989979 
                           + gre * 0.002264 
                           + gpa * 0.804038 
                           + rank2 * -0.675443 
                           + rank3 * -1.340204 
                           + rank4 * -1.551464 )))
  return(result)
}

f_all(750, 3.5, 0, 1, 0)
#atau
f_all(gre = 750, gpa = 3.5, rank2 = 0, rank3 = 1, rank4 = 0)


#Untuk Generalisasi data. Sehingga data dapat digunakan kapan saja
trainset <- mydata[1:280, ]
testset <- mydata[281:400, ]

model <- glm(admit ~ gre + gpa + rank , data = trainset, family = "binomial")

# Kata Penting Pengolahan Data
# Train 
# Test

test.probs <- predict(model, testset, type='response')
pred.logit <- rep(0, length(test.probs))
pred.logit[test.probs >= 0.5] <- 1

confusionMatrix(factor(testset$admit), factor(pred.logit))
# Membandingkan data admit dengan prediksi

plot(roc(testset$admit, pred.logit))
# semakin ke pojok kiri semakin bagus
