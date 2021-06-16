print(Concrete_Data)
cat("\f")
plot(Concrete ~ Cement,  data = Concrete_Data)
model1 <- lm(Concrete ~ Cement + Coarse + Fine + Superplasticizer + Age+ Blast + Water, data = Concrete_Data)
model2 <-lm(Concrete ~ Cement + Fine + Age + Blast + Water + Superplasticizer , data = Concrete_Data)
summary(model1)
abline(model1)

