library(ISLR)
attach(Smarket)

# Split data into testing and training

train <- Smarket[Year < 2005, ]
test <- Smarket[Year == 2005, ]

# MODEL = Direction ~ Lag1+Lag2+Lag3
# Binomial karena 2 kelas
model <- glm(Direction ~ Lag1 + Lag2 + Lag3, data = train, family = "binomial")

test.probs <- predict(model, test, type = 'response')
pred.logit <- rep(0, length(test.probs))
pred.logit[test.probs >= 0.5 ] <- 1


test.probs <- predict(model, test, type = 'response')
fact <- rep(0, length(test$Direction))
fact[test$Direction == 'Up' ] <- 1

confusionMatrix(factor(fact), factor(pred.logit))
#a <- as.numeric(test$Direction)
#b <- as.numeric(factor(pred.logit))
#plot(roc(a, b))

plot(roc(fact, pred.logit))

# Untuk Melakukan Plot, Jika nilainya angka. maka tidak perlu difactorkan
jika huruf, Maka difaktorkan
