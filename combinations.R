library(gtools) # loading required package

objectz <- letters[1:13]
choose(13, 3) # nCr....i.e 5C2
objectz.combins <- combinations(13, 3, v=objectz, set=TRUE, repeats.allowed=F)
objectz.combins


# Combination with Replacement
factorial(n+r-1)/ (factorial(n-1)*factorial(r))

