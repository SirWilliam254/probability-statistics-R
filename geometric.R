dgeom(x, p)
pgeom(x, p)
qgeom(Fx, p)
rgeom(numSims, p)

# probability of observing 5 failures before the first success, given the 
# probability of success is 0.3.
p <- 0.2
x <- 5
dgeom(x, p)
 # alternatively
p*(1-p)^x
