#dpois(x, lambda)
#ppois(x, lambda)
#qpois(Fx, lambda)
#rpois(numSims, lambda)
#### If a certain type of event occurs at a rate of 3 per day, the
#### probability that on a particular day, 5 events are observed is:
lambda <- 3
numEvents <- 5
# P(X = 5)
dpois(numEvents, lambda)
## Alternatively
exp(-lambda)*(lambda^numEvents)/factorial(numEvents)
