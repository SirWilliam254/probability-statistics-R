##MARCOV CHAIN
P <- matrix(c(0.9, 0.1,
              0.2, 0.8), nrow=2, ncol=2, byrow=TRUE)
library(shape)
library(diagram)
# plotting
plotmat(t(P), curve=0.3, pos=c(2), box.size=0.1,
        self.shifty = c(0.1, 0.1),
        self.shiftx = c(-0.1, 0.1),
        self.lwd = 2,
        self.arrpos = c(1, 1),
        shadow.size = 0,
        cex = 1,
        box.cex = 1.5)


# matrix
P <- matrix(c(0.7, 0.3,
              0.4, 0.6), nrow=2, ncol=2, byrow=TRUE)
nStates <- dim(P)[1]
# Compute P - I(n) and select first n-1 rows
A = t(P - diag(nStates))[1:(nStates-1),]
# Add "sum to 1" constraints
A = rbind(A, rep(1, nStates))
# Define RHS of system of equations
b <- c(rep(0, nStates-1), 1)
# Solve
pi_theoretical <- solve(A,b)

###############################################################################
########################## SIMULATING #########################################
set.seed(123)
#Specify states
S <- c(1,2)
M <- length(S)
#Define transition matrix P
P <- matrix(data=c(0.9, 0.1,
                   0.2, 0.8),
            nrow=2, ncol=2, byrow=TRUE)
dimnames(P) <- list(S, S)
P
#Determine number of simulations
numStages <- 1e5
#Initialize vector x
x <- rep(NA, numStages+1)
names(x) <- 0:numStages
x0 <- 1
x[1] <- x0
#For each 
for(i in 1:numStages){
        
        rowIndex <- which(x[i]==S)
        x[i+1] <- sample(S, 1, prob=P[rowIndex,], replace=TRUE)
}
head(x, 10)
summaryTable <- cbind(Stage=0:numStages, State=x)
head(summaryTable)
#Compute number of times in each state
table(x)



#Plot
plotLen <- 50
plot(names(x[1:plotLen]), x[1:plotLen], type='s',
     xlab="Time", ylab='State' , yaxt='n')
axis(2, at = c(1,2), labels = S)
head(x, 10)

# Create an empty matrix
mat <- matrix(0, nrow = M, ncol = numStages)
# If MC is in state at i at time n, record a 1 in cell (i,n)
mat[cbind(x[2:(numStages+1)], seq_len(numStages))] <- 1
# Compute cumulative sum of number of times in each state
mat_sum <- t(apply(mat,1,cumsum))
# Compute proportion of times in each state
pi_cumsum <- t(sweep(mat_sum,2,colSums(mat_sum),"/"))
#head(mat_sum)
mycols <- c("hotpink", "blue")
numStagesPlot <- min(1000, numStages)
plot(1:numStagesPlot, pi_cumsum [1:numStagesPlot,1],
     ylim=c(0,1),
     col=mycols[1],
     ylab=expression(pi[i]), type="l",
     xlab="Stage", lty=2,
     cex.axis = 1.5,
     cex.lab = 1.5
)

