

```r
   // probability and statistics-R
```
# Subtiltles for code available
- permutations [code !!](https://github.com/SirWilliam254/probability-statistics-R/blob/main/permutation.R)
- combinations [code !!](https://github.com/SirWilliam254/probability-statistics-R/blob/main/combinations.R)
- Venn Diagram "3 groups"
[code !!](https://github.com/SirWilliam254/probability-statistics-R/blob/main/venn%20diagram.R)
- Bayes theorem + conditional probabilities examples: [HERE !!](https://www.analyzemath.com/probabilities/bayes-theorem.html)
- pmf and cdf plotting [code !!](https://github.com/SirWilliam254/probability-statistics-R/blob/main/pmf%26cdf_barplot.R)
## Distributions
- ## Discrete
- Bernoulli

   A Bernoulli trial is an experiment with only two outcomes. i.e success or failure [code !!]()
- Binomial

    Binomial random variable X is more like n
independent and identical Bernoulli trials in which the probability of a success
is p, 0 < p < 1. i.e  X ∼ B(n, p) [code !!](https://github.com/SirWilliam254/probability-statistics-R/blob/main/binomial.R)


[Some details HERE !!](https://www.vrcbuzz.com/binomial-distribution-probabilities-using-r/)
- Geometric

    Suppose that a sequence of independent and identical Bernoulli trials, each
having probability of success p, 0 < p < 1, are performed until a success is
observed. If X denotes the number of failures obtained prior to the first success,
then X is said to be a geometric random variable. [code !!](https://github.com/SirWilliam254/probability-statistics-R/blob/main/geometric.R)

- Negative Binomial

   Suppossing that a sequence of independent and identical Bernoulli trials, each
having probability of success p," where 0 ≤ p ≤ 1", are performed until r successes are
observed. If X denotes the number of failures obtained prior to getting the rth success,
then X is said to be a negative binomial random variable. [code !!](https://github.com/SirWilliam254/probability-statistics-R/blob/main/negative%20binomial.R)

- Poisson

   A random variable X that takes counting values 0, 1, 2, . . ., is said to be a Poisson
random variable with parameter λ, for some positive  λ value. [code !!](https://github.com/SirWilliam254/probability-statistics-R/blob/main/poisson.R)

- Hypergeometric

   Suppose that a lot consists of N items, of which k are of one type (success)
and N − k are of another type (failures). Suppose that n items are sampled
randomly and sequentially from the lot, without replacement. Let X denote
the number of successes amongst the n sampled items, then X is said to have a
hypergeometric distribution. [code !!](https://github.com/SirWilliam254/probability-statistics-R/blob/main/Hypergeometric.R)

[SIMULATING DISCRETE](https://github.com/SirWilliam254/probability-statistics-R/blob/main/simulating_discrete.R)

- ## Continuous
- Uniform

 The random variable X has a uniform distribution on the interval (a, b)
if its density function is given by:
f(x) = 

          1 /               
            b−a


- Exponential

 A random variable X has an exponential distribution, X ∼ Exp(λ), if
and only if it has density function:

   f(x) = λe−λx where x ≥ 0, λ > 0
          0 , otherwise

- Normal
- Gamma
- Weibull
- Beta

## Marcov Chains
