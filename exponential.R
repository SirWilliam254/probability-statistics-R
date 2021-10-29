#dexp(x, lambda)
#pexp(x, lambda)
#qexp(Fx, lambda)
#rexp(numSims, lambda)

# for instance  an exponential random variable X with mean 3. we can find P(X > 3).
lambda <- 1/3
1 - (1 - exp(-lambda*3))
# Alternatively
1 - pexp(3, lambda)
