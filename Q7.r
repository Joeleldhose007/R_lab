# Function to generate modified Fibonacci series
generate_modified_fibonacci <- function(n) {
  if (n <= 0) {
    return(integer(0)) # Return an empty vector for non-positive n
  }
  
  # Initialize the first three terms
  series <- numeric(n)
  
  if (n >= 1) series[1] <- 0
  if (n >= 2) series[2] <- 1
  if (n >= 3) series[3] <- 1
  
  for (i in 4:n) {
    series[i] <- series[i - 1] + series[i - 2] + series[i - 3]
  }
  
  return(series)
}

# Main program
cat("Enter the number of terms for the modified Fibonacci series:\n")
num_terms <- as.integer(readline(prompt = "Number of terms: "))

# Generate and display the series
if (num_terms <= 0) {
  cat("Please enter a positive integer.\n")
} else {
  fibonacci_series <- generate_modified_fibonacci(num_terms)
  cat("Modified Fibonacci series with", num_terms, "terms:\n")
  print(fibonacci_series)
}
