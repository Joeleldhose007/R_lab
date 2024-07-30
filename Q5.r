# Function to calculate the sum of the series
calculate_series_sum <- function(n_terms) {
  if (n_terms <= 0) {
    stop("Number of terms must be a positive integer.")
  }
  
  # Initialize the sum
  series_sum <- 0
  
  # Loop through each term in the series
  for (i in 1:n_terms) {
    # Calculate the denominator for the current term
    denominator <- 2 * i - 1
    
    # Calculate the sign for the current term
    sign <- ifelse(i %% 2 == 0, -1, 1)
    
    # Add the current term to the series sum
    series_sum <- series_sum + sign * (i / denominator)
  }
  
  return(series_sum)
}

# Prompt user for the number of terms
n_terms <- as.integer(readline(prompt = "Enter the number of terms in the series: "))

# Validate the number of terms
if (is.na(n_terms) || n_terms <= 0) {
  cat("Invalid number of terms. It must be a positive integer.\n")
} else {
  # Calculate and display the series sum
  series_sum <- calculate_series_sum(n_terms)
  cat("Sum of the series up to", n_terms, "terms is:\n", series_sum, "\n")
}
