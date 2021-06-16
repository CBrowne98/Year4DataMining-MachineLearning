library(class)
#install.packages('gmodels')
#install.packages('class')

library(gmodels)


print(car)
df <- car
df$V1[df$V1=='vhigh'] <- 4
df$V1[df$V1=='high'] <- 3
df$V1[df$V1=='med'] <- 2
df$V1[df$V1=='low'] <- 1

df$V2[df$V2=='vhigh'] <- 4
df$V2[df$V2=='high'] <- 3
df$V2[df$V2=='med'] <- 2
df$V2[df$V2=='low'] <- 1

df$V3[df$V3=='5more'] <- 5

df$V4[df$V4=='more'] <- 5

df$V5[df$V5=='small'] <- 1
df$V5[df$V5=='med'] <- 2
df$V5[df$V5=='big'] <- 3

df$V6[df$V6=='low'] <- 1
df$V6[df$V6=='med'] <- 2
df$V6[df$V6=='high'] <-3

df$V7[df$V7=="unacc"] <- 1
df$V7[df$V7=="acc"] <- 2
df$V7[df$V7=="good"] <- 3
df$V7[df$V7=="vgood"] <- 4
print(df)





car_rand <- df[sample(nrow(df)),]

df
car_rand
car_train <- car_rand[1:1500,]
car_test <- car_rand[1501:1728,]


car_train_value <- df[1:1500, 7]
car_test_value <- df[1501: 1728, 7]
car_train_value
predictions = knn(car_train, car_test, cl=car_train_value, k=4)

CrossTable(predictions, car_test_value, 
           prop.chisq = FALSE, prop.c = FALSE, prop.r = FALSE)
cm <- table(predictions, car_test_value)
sum(diag(cm))/sum(cm)

