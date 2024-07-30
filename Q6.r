# Function to check if a number is prime
is_prime <- function(n) {
  if (n <= 1) return(FALSE)        # Numbers less than or equal to 1 are not prime
  if (n == 2) return(TRUE)         # 2 is the only even prime number
  if (n %% 2 == 0) return(FALSE)   # Even numbers greater than 2 are not prime
  for (i in 3:sqrt(n)) {
    if (n %% i == 0) return(FALSE) # Check divisibility from 3 to sqrt(n)
  }
  return(TRUE)
}

# Function to find all prime numbers in a given range
primes_in_range <- function(start, end) {
  prime_numbers <- c()             # Initialize an empty vector to store prime numbers
  for (num in start:end) {
    if (is_prime(num)) {
      prime_numbers <- c(prime_numbers, num)  # Append the prime number to the vector
    }
  }
  return(prime_numbers)
}

# Main program
cat("Enter the range to find prime numbers:\n")
start <- as.integer(readline(prompt = "Start of the range: "))
end <- as.integer(readline(prompt = "End of the range: "))

# Ensure the start is less than or equal to end
if (start > end) {
  cat("Invalid range. The start should be less than or equal to the end.\n")
} else {
  primes <- primes_in_range(start, end)
  cat("Prime numbers in the range", start, "to", end, "are:\n")
  print(primes)
}
