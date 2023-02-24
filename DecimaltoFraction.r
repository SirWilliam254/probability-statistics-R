# Define a list of decimal numbers
decimal_list <- c(0.25, 0.125, 0.875, 0.333333, 0.666667, 0.2, 0.4, 0.6, 0.8, 0.1, 0.9)

# Define a function to convert a decimal to a fraction
decimal_to_fraction <- function(decimal_num) {
  fraction_num <- signif(decimal_num, digits=15) # Round the decimal to 15 significant digits to avoid floating point errors
  fraction_num <- fraction_num * 10^(15 - floor(log10(abs(fraction_num)))) # Convert the decimal to an integer by multiplying it by 10^n, where n is the number of decimal places
  gcd_num <- gcd(fraction_num, 10^15) # Find the greatest common divisor between the numerator and denominator
  numerator <- fraction_num / gcd_num # Simplify the fraction by dividing both numerator and denominator by their greatest common divisor
  denominator <- 10^15 / gcd_num
  return(paste(numerator, "/", denominator, sep="")) # Return the fraction as a string in the format "numerator/denominator"
}

# Use sapply to apply the decimal_to_fraction function to each element in the decimal_list
fraction_list <- sapply(decimal_list, decimal_to_fraction)

# Print the list of fractions
print(fraction_list)
