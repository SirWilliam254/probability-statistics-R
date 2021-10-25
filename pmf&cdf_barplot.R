# Finding and graphing the pmf of X.
px <- c((9/12)*(8/11), (9/12)*(3/11) + (3/12)*(9/11), (3/12)*(2/11)) # pmf of x
MASS::fractions(px)
px
barplot(px, names.arg=0:2, ylim=c(0,1), xlab="x", ylab="p(x)") #bar plot


## CDF of x
# we get the cumulative probabilities px
cumsum(px)
# plotting from zero
sfun0 <- stepfun(0:2, c(0, cumsum(px)), f = 0)
plot(sfun0, verticals=FALSE, xlim=c(0, 3), pch = 19, main=NULL,
     ylab="F(x)")
