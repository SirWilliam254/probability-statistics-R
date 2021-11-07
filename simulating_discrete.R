set.seed(123) # ensuring reproducibility
x <- seq(10, 50, 10)
px <- c(0.1, 0.1, 0.3, 0.3, 0.2) # probability density function
Fx <- cumsum(px)
Fx # cdf

numSims <- 1e4
u.all <- runif(numSims)
results <- data.frame(u=u.all, x1=NA)
# function
for(i in 1:numSims){
  results[i, "x1"] <- x[min(which(u.all[i] < Fx))]
}
table(results[,"x1"])

head(results)
