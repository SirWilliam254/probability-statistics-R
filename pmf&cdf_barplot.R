# Two coins are flipped. Letting X denote the number of heads observed.
# Finding and graphing the pmf and cdf of X:
px <- c(0.25, 0.5, 0.25) # pmf of x
MASS::fractions(px)
px
barplot(px, names.arg=0:2, ylim=c(0,1), xlab="x", ylab="p(x)") #bar plot


## CDF of x
# we get the cumulative probabilities px
cumsum(px)
# plotting from zero
cdf_0 <- stepfun(0:2, c(0, cumsum(px)), f = 0)
plot(cdf_0, verticals=FALSE, xlim=c(0, 3), pch = 19, main=NULL,
     ylab="F(x)")

## Expected value of x
x <- 0:2
EX <- sum(x*px)
EX
