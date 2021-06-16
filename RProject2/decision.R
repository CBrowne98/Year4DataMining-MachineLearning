# install.packages("C50")
# install.packages("gmodels")
library(C50)
library(gmodels)


df <- car
set.seed(2)
cars <- as.factor(df)
randomCar <- df[sample(nrow(df)),]
cars <- as.factor(randomCar)
cars
car_train <- randomCar[1:1500, ]
car_test  <- randomCar[1500:1728, ]

randomCar
df

car_train$V7 <- as.factor(car_train$V7)
model <- C5.0(car_train[-7], car_train$V7)

model
plot(model)
summary(model)

carPrediction <- predict(model, car_test)

library(gmodels)
CrossTable(carPrediction, car_test$V7, 
           prop.chisq = FALSE, prop.c = FALSE, prop.r = FALSE,
           dnn = c('predicted', 'actual'))

