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



cars <- df[sample(nrow(df)),]
model <- cars(df, 8)
model$tot.withinss
model$centers



