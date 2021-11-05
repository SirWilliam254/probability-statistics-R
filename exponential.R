dexp(x, lambda)
pexp(x, lambda)
qexp(Fx, lambda)
rexp(numSims, lambda)

# for instance  an exponential random variable X with mean 3. we can find P(X > 4).
lambda <- 1/3
1 - (1 - exp(-lambda*4))
# Alternatively
1 - pexp(4, lambda)

###  It will fall between 2 and 3
pexp(3, lambda) - pexp(2, lambda)

###  will be no more than 2 i.e P(X <= 2)
pexp(2, lambda)

### getting x for prob 0.1
qexp(0.9, lambda)
