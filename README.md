```r
   probability & statistics in R
```
## Dependencies
- shape
- diagram
- gtools
- VennDiagram
- combinat

# Subtiltles for the code that is available

- permutations [code !!](https://github.com/SirWilliam254/probability-statistics-R/blob/main/permutation.R)
- combinations [code !!](https://github.com/SirWilliam254/probability-statistics-R/blob/main/combinations.R)
- Venn Diagram "3 groups"
[code !!](https://github.com/SirWilliam254/probability-statistics-R/blob/main/venn%20diagram.R)
- Bayes theorem + conditional probabilities examples: [HERE !!](https://www.analyzemath.com/probabilities/bayes-theorem.html)
- pmf and cdf plotting [code !!](https://github.com/SirWilliam254/probability-statistics-R/blob/main/pmf%26cdf_barplot.R)
# Distributions
 # Discrete
- ## Bernoulli

   A Bernoulli trial is an experiment with only two outcomes. i.e success or failure [code !!]()
   
- ## Binomial

    Binomial random variable X is more like n
independent and identical Bernoulli trials in which the probability of a success
is p, 0 < p < 1. i.e  X ∼ B(n, p) [code !!](https://github.com/SirWilliam254/probability-statistics-R/blob/main/binomial.R)


[Some details HERE !!](https://www.vrcbuzz.com/binomial-distribution-probabilities-using-r/)
- ## Geometric

    Suppose that a sequence of independent and identical Bernoulli trials, each
having probability of success p, 0 < p < 1, are performed until a success is
observed. If X denotes the number of failures obtained prior to the first success,
then X is said to be a geometric random variable. [code !!](https://github.com/SirWilliam254/probability-statistics-R/blob/main/geometric.R)

- ## Negative Binomial

   Suppossing that a sequence of independent and identical Bernoulli trials, each
having probability of success p," where 0 ≤ p ≤ 1", are performed until r successes are
observed. If X denotes the number of failures obtained prior to getting the rth success,
then X is said to be a negative binomial random variable. [code !!](https://github.com/SirWilliam254/probability-statistics-R/blob/main/negative%20binomial.R)

- ## Poisson

   A random variable X that takes counting values 0, 1, 2, . . ., is said to be a Poisson
random variable with parameter λ, for some positive  λ value. [code !!](https://github.com/SirWilliam254/probability-statistics-R/blob/main/poisson.R)

- ## Hypergeometric

   Suppose that a lot consists of N items, of which k are of one type (success)
and N − k are of another type (failures). Suppose that n items are sampled
randomly and sequentially from the lot, without replacement. Let X denote
the number of successes amongst the n sampled items, then X is said to have a
hypergeometric distribution. [code !!](https://github.com/SirWilliam254/probability-statistics-R/blob/main/Hypergeometric.R)

[SIMULATING DISCRETE](https://github.com/SirWilliam254/probability-statistics-R/blob/main/simulating_discrete.R)

 # Continuous
 ## [The Pdfs, means and their variances in Rmd format !!](https://github.com/SirWilliam254/probability-statistics-R/blob/main/models.Rmd)
 
- ## Uniform

 The random variable X has a uniform distribution on the interval (a, b).
 
[code !](https://github.com/SirWilliam254/probability-statistics-R/blob/main/uniform.R)
- ## Exponential

 A random variable X has an exponential distribution, X ∼ Exp(λ).It is often used to model the time elapsed between events.
 
 [code !](https://github.com/SirWilliam254/probability-statistics-R/blob/main/exponential.R) 

- ## Normal
formulas

``` r
dnorm(x, mean, sd)
pnorm(x, mean, sd)
qnorm(Fx, mean, sd)
rnorm(numSims, mean, sd)
```

[code !](https://github.com/SirWilliam254/probability-statistics-R/blob/main/normal.R)                      
- ## Gamma
formulas

``` r
dgamma(x, alpha, lambda)
pgamma(x, alpha, lambda)
qgamma(Fx, alpha, lambda)
rgamma(numSims, alpha, lambda)
```
 
[code !](https://github.com/SirWilliam254/probability-statistics-R/blob/main/gamma.R)
- ## Weibull


``` r
formulas
dweibull(x, shape = alpha, scale = theta)
pweibull(x, shape = alpha, scale = theta)
qweibull(Fx, shape = alpha, scale = theta)
rweibull(numSims, shape = alpha, scale = theta)
``` 
[code !](https://github.com/SirWilliam254/probability-statistics-R/blob/main/weibull.R)
- ## Beta


``` r
formulas
dbeta(x,alpha, beta)
pbeta(x,alpha, beta)
qbeta(Fx,alpha, beta)
rbeta(numSims, alpha, beta)
```


[code !](https://github.com/SirWilliam254/probability-statistics-R/blob/main/Beta.R)

# Marcov Chains
These is a mathematical system which experiences transitions 
from a state to another based on certain probabilistic rules

[Code!!](https://github.com/SirWilliam254/probability-statistics-R/blob/main/MARCOV.R)


#### Another Markov chain Example

```r
library(markovchain)
```

```r
# Define the transition matrix
P <- matrix(c(0.5, 0.3, 0.2,
              0.5, 0.4, 0.0,
              0.0, 0.3, 0.8), byrow = TRUE, nrow = 3,
            dimnames = list(c("L", "M", "H"), c("L", "M", "H")))
```
This matrix defines the probabilities of moving from each state to each other state. Note that the rows and columns of the matrix are ordered according to the state names ("L", "M", and "H").

Once you have defined the transition matrix, you can create a markovchain object using the new("markovchain") function, and specify the transition matrix as an argument:
```r
# Create a markovchain object
mc <- new("markovchain", states = c("L", "M", "H"), transitionMatrix = P)
```
This object represents your Markov chain, and you can use it to perform various operations, such as computing the steady-state probabilities, simulating the chain, and computing the probability of reaching a certain state after a certain number of time periods.

For example, to compute the steady-state probabilities, you can use the steadyStates() function:

```r
# Compute the steady-state probabilities
steady_states <- steadyStates(mc)
```
This function returns a vector of probabilities for each state in the chain. In this case, the probabilities are:

```r
steady_states
#>      L      M      H 
#> 0.1000 0.3000 0.6000
```

To simulate the chain for a certain number of time periods, you can use the rmarkovchain() function:

```r
# Simulate the chain for 10 time periods
sim <- rmarkovchain(n = 10, object = mc, t0 = "H")
```

This function generates a sequence of states for the Markov chain, starting from the initial state "H". The resulting sim object is a character vector containing the state names for each time period:

```r
sim
#>  [1] "H" "H" "H" "H" "H" "H" "H" "H" "H" "H"
```

To compute the probability of reaching a certain state after a certain number of time periods, you can use the markovchainSequence() function:

```r
# Compute the probability of reaching state "L" after 2 time periods
prob <- markovchainSequence(mc, steps = 2, from = "H", to = "L")
```

This function returns the probability of reaching the state "L" after 2 time periods, starting from the initial state "H":

```r
prob
#> [1] 0.5
```

These are just a few examples of what you can do with a markovchain object in R. The markovchain package provides many more functions for working with Markov chains, such as computing the hitting probabilities, the first passage probabilities, and the absorption probabilities. You can also visualize the Markov chain using various functions provided by the markovchain and igraph packages.

Here's an example of how to visualize the Markov chain we defined earlier using the markovchainList(), graph.adjacency(), and plot.igraph() functions:

```r
# Define the Markov chain as a list of transitions
chain_list <- list(c("L", "L", 0.5), c("L", "M", 0.3),
                   c("L", "H", 0.2), c("M", "L", 0.5),
                   c("M", "M", 0.4), c("M", "H", 0.0),
                   c("H", "M", 0.3), c("H", "H", 0.8))

# Convert the list to a markovchainList object
chain <- markovchainList(chain_list)

# Convert the transition matrix to an adjacency matrix
adj_matrix <- as.matrix(chain)

# Convert the adjacency matrix to an igraph object
graph <- graph.adjacency(adj_matrix, mode = "directed", weighted = TRUE)

# Plot the graph
plot.igraph(graph, vertex.label = chain@states, vertex.size = 30,
            vertex.color = "white", edge.width = chain@transitionMatrix*10,
            layout = layout.circle)
```

This code first defines the Markov chain as a list of transitions, and then converts it to a markovchainList object. It then converts the transition matrix to an adjacency matrix using the as.matrix() function, and converts the adjacency matrix to an igraph object using the graph.adjacency() function. Finally, it plots the graph using the plot.igraph() function, specifying various parameters such as the vertex labels, sizes, colors, and the edge widths.

The resulting plot shows the three states of the Markov chain as vertices (labeled "L", "M", and "H"), and the transitions between them as directed edges with varying widths, proportional to the transition probabilities.

