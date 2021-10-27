set.seed(123)
x <- seq(10, 50, 10)
px <- c(0.1, 0.1, 0.3, 0.3, 0.2)
Fx <- cumsum(px)
Fx

numSims <- 1e4
u.all <- runif(numSims)
results <- data.frame(u=u.all, x1=NA)
# function
for(i in 1:numSims){
  results[i, "x1"] <- x[min(which(u.all[i] < Fx))]
}
table(results[,"x1"])

head(results)
