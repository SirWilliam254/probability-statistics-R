dweibull(x, shape = alpha, scale = theta)
pweibull(x, shape = alpha, scale = theta)
qweibull(Fx, shape = alpha, scale = theta)
rweibull(numSims, shape = alpha, scale = theta)

# Lets say we have a Weibull random variable X with shape parameter ?? = 2 and
# scale parameter ?? = 3. Find P(X < 4.5).
pweibull(4.5, 2, 3)
# Alternatively
1 - exp(-(4.5/3)^2)
