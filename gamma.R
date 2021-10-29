#dgamma(x, alpha, lambda)
#pgamma(x, alpha, lambda)
#qgamma(Fx, alpha, lambda)
#rgamma(numSims, alpha, lambda)

# considering a gamma random variable X with shape parameter 1.8 and rate
# parameter 2. we can find P(X < 3.5).
pgamma(3.5, 1.8, 2)


################### Simulation ######################
require(graphics)
EX = 450
lambda <- 1/EX
alpha <- 2
#Simulate sum of 2 exponential random variables
numSims <- 1e5
y_sim <- replicate(numSims,sum(rexp(2, lambda)))
hist(y_sim, prob=TRUE, xlab="y (total length)", ylim=c(0, 8e-4),
     main= bquote(atop("Comparison of Simulated and Theoretical Total Life Length",
                       "Y="~X[1]+X[2]~","~X[i]~"~Exp(1/450)")))
mean(y_sim)

var(y_sim)

#Compare to Gamma(2, lambda)
y <- seq(0, 6000, 0.1)
lines(y, dgamma(y, alpha, lambda), col="red")
legend("topright", legend=bquote("Y~Gamma(2,"~.(round(lambda,4))~")"), lty=1, col="red")
alpha/lambda

alpha/lambda^2