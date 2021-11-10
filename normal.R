dnorm(x, mean, sd)
pnorm(x, mean, sd)
qnorm(Fx, mean, sd)
rnorm(numSims, mean, sd)

# Considering a normal random variable X with mean 2 and variance 0.3. 
#we can find P(X < 1.7)
pnorm(1.7, 2, sqrt(0.3))

############### PLOTTING ###############
mu <- 0
sigma <- 1
x <- seq(-4, 4, 0.001)
cols <- c(gray.colors(4, start = 0.1, end = 0.9, gamma = 2.2, alpha = NULL),
          gray.colors(4, start = 0.9, end = 0.1, gamma = 2.2, alpha = NULL))
colText <- c("black")
#Create plot
plot(x, dnorm(x, mu, sigma), type="l", lwd=3, ylab="f(x)", yaxt="n", xaxt="n")
#Add axis labels
axis(side=1, at=-3:3, labels=c(
  expression(mu ~-3*sigma), expression(mu ~-2 *sigma), expression(mu~-1 *sigma),
  expression(mu),
  expression(mu ~+1*sigma), expression(mu ~+2 *sigma), expression(mu ~+3 *sigma)))
#Compute probabilities
Fx <- pnorm(-4:4, mu, sigma)
#For 4 standard deviations either side of the mean
for(i in -4:4){
  j <- i+1
  k <- 5
  ijvals <- seq(i, j, 0.001)
  #Shade areas
  polygon(x = c(i,ijvals , j),
          y = c(0, dnorm(ijvals, 0, 1), 0),
          col=cols[i+k], border="white")
  #Add probability of each area as text
  text((i+0.5), 0.05, labels=round(diff(Fx)[i+k],digits=3), col=colText[i+k])
}
