#dnbinom(x, r, p)
#pnbinom(x, r, p)
#qnbinom(Fx, r, p)
#rnbinom(numSims, r, p)
##probability of observing 3 failures before the second
##success, if the probability of success is 0.2:
p <- 0.2
r <- 2 #numSuccesses
x <- 3 #numFailures
dnbinom(x, r, p)
## alternatively
choose(x+r-1, r-1)*
  (p^r)*(1-p)^x