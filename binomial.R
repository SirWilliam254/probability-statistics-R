# to produce a binomial we can use:
dbinom(x, n, p)
pbinom(x, n, p)  ##Binomial cumulative probability
qbinom(Fx, n, p)
rbinom(numSims, n, p) ## simulation

#  probability function and distribution function of the binomial distribution 
#with n = 10 and p = 0.3 for values of x = 0, 1, . . . , 10:
px1 <- dbinom(0:10, 10, 0.2)
x <- c(0:10)
## Plotting the binomial probability dist
plot(x,px1,type="h",xlim=c(0,10),ylim=c(0,max(px)),
     lwd=10, col="blue",ylab="P(X=x)")
title("PMF of Binomial (size=10,prob=0.2)")

pbinom(0:10, 10, 0.2)#Binomial cumulative probability
a <- pbinom(0:10, 10, 0.2)
a[4] - a[3]
dbinom(3, 10, 0.2)#probability that the sample contains Exactly 3
pbinom(3, 10, 0.2)#probability that the sample contains 3 or less 
pbinom(3, 10, 0.2,lower.tail=FALSE)#probability that the sample contains more than 3
## simulation
rbinom(100, 10, 0.2)
table(rbinom(100, 10, 0.2))
