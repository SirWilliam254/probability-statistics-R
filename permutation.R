library(gtools) # loading package

objectz <- letters[1:13]
objectz

factorial(13)/factorial(13-3)# Computing the number of permuations
# permutation.... 5P2
objectz_perms <- permutations(13, 3, v=objectz, set=TRUE, repeats.allowed=FALSE)
dim(objectz_perms)

# listing the permutations
objectz_perms


# Permutation with replacement
(n)^r


######  Partitions
factorial(n)/ (factorial(n1)*factorial(n2)*factorial(n3)) # works for the case below
# Permutation of a word /Diff arrangements
t1 <- c("p", "e", "p", "p", "e", "r") #the name we want to get the permutations of
library(combinat)
my_list<-combinat::permn(t1)
# convert the list to a matrix
my_matrix<-do.call(rbind,my_list)

#take the unique rows
my_matrix<-unique(my_matrix)

head(my_matrix)
dim(my_matrix)
