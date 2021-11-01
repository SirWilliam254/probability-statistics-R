

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
# Distributions
+ # Discrete
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

+ # Continuous
- ## Uniform
## [The Pdfs and their means and variances in Rmd format !!](https://github.com/SirWilliam254/probability-statistics-R/blob/main/models.Rmd)
 The random variable X has a uniform distribution on the interval (a, b)
if its density function is given by:
```math
# Uniform
$$f(x)=\frac{1}{b-a}$$

## mean 
$$E(x)=\frac{a+b}{2}$$
## Variance
$$Var(x)=\frac{(b-a)^2}{12}$$
```
[code !](https://github.com/SirWilliam254/probability-statistics-R/blob/main/uniform.R)
- ## Exponential

 A random variable X has an exponential distribution, X ∼ Exp(λ), if
and only if it has density function:

```rmd
# Exponential
$$f(x)=\lambda e^{-\lambda x}$$
## mean
$$E(x)= \frac{1}{\lambda}$$
## Variance
$$Var(x)= \frac{1}{\lambda^2}$$
```
 [code !](https://github.com/SirWilliam254/probability-statistics-R/blob/main/exponential.R) 

- ## Normal

A random variable X is Normally distributed, X ∼ N(µ, σ2
), if and only
if it has probability density function:

```rmd
# Normal
$$f(x)= \frac{1}{\sqrt{2 \pi \sigma^2}}e^{-\frac{1}{2}} \left(\frac{x - \mu}{\sigma}\right)^2 $$
## mean 
$$E(x)= \mu$$
## Variance
$$Var(x)=\sigma^2$$
```
[code !](https://github.com/SirWilliam254/probability-statistics-R/blob/main/normal.R)                      
- ## Gamma


 A random variable X has a Weibull distribution, X ∼ Weibull(α, θ) with
shape parameter α > 0 and scale parameter θ > 0, if it has density function:

```rmd
# Gamma
$$f(x) = \frac {x^{\alpha-1} \lambda^{\alpha} e^{-\lambda x}}{\Gamma\alpha}$$

## mean
$$E(x) = \frac{\alpha}{\lambda}$$

## Variance
$$Var(x) = \frac{\alpha}{\lambda^2}$$
```
[code !](https://github.com/SirWilliam254/probability-statistics-R/blob/main/gamma.R)
- ## Weibull


 A random variable X has a Weibull distribution, X ∼ Weibull(α, θ) with
shape parameter α > 0 and scale parameter θ > 0, if it has density function:

```rmd
# Weibull
$$f(x)=\left(\frac{\alpha}{\theta}\right)\left(\frac{x}{\theta}\right)^{\alpha-1} e^{-({\frac{x}{\theta})^\alpha}}$$
## mean
$$E(x)=~~\Theta \Gamma(1+\frac{1}{\alpha})$$
## Variance
$$Var(x)=~~\Theta^2 \left(\Gamma(1+\frac{2}{\alpha})-\Gamma(1+\frac{1}{\alpha})^2\right)$$
```
[code !](https://github.com/SirWilliam254/probability-statistics-R/blob/main/weibull.R)
- ## Beta
 A random variable X has a Beta distribution, X ∼ Beta(α, β) with α > 0
and β > 0, if it has density function:
```rmd
# Beta
$$f(x) = \frac{\Gamma(\alpha+\beta)}{\Gamma(\alpha)\Gamma(\beta)}x^{\alpha - 1}(1-x)^{\beta -1}$$

## mean
$$E(X)=\frac{\alpha}{\alpha+\beta}$$

## Variance
$$Var(x)=\frac{\alpha\beta}{(\alpha+\beta)^2(\alpha+\beta+1)}$$
```
[code !](https://github.com/SirWilliam254/probability-statistics-R/blob/main/Beta.R)

# Marcov Chains
These is a mathematical system which experiences transitions 
from a state to another based on certain probabilistic rules

[INTRO Code !!](https://github.com/SirWilliam254/probability-statistics-R/blob/main/MARCOV.R)
