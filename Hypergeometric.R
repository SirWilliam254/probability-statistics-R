#dhyper(x, k, N-k, n)
#phyper(x, k, N-k, n)
#qhyper(x, k, N-k, n)
#rhyper(numSims, k, N-k, n)
#### where;

#x = number of successes
#k = total number of successes
#N = total number of items
#N - k = total number of failures
#n = number of items selected

# Lets say ten men and five women have applied for a job at some company, 
# and all are equally qualified for either position. Hr randomly hires two 
# people from the applicant pool to fill the positions.
# The probability that a man and a woman are chosen would be:
totalNumSuccesses <- 10 #k
totalNumFailures <- 5 #N-k
numSuccesses <- 1 #x
numTrials <- 2 #n
dhyper(numSuccesses, totalNumSuccesses, totalNumFailures, numTrials)
## Alternatively
choose(totalNumSuccesses, numSuccesses)*
  choose(totalNumFailures, numTrials-numSuccesses)/
  choose(totalNumSuccesses+totalNumFailures, numTrials)
