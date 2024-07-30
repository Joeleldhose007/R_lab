# Function to generate a random password
generate_password <- function(length) {
  if (length <= 0) {
    stop("Password length must be a positive integer.")
  }
  
  # Define character sets
  upper_case <- LETTERS
  lower_case <- letters
  digits <- 0:9
  special_chars <- c("!", "@", "#", "$", "%", "^", "&", "*", "(", ")", "-", "_", "=", "+", "{", "}", "[", "]", "|", ":", ";", "<", ">", ",", ".", "/", "?")
  
  # Combine all characters
  all_chars <- c(upper_case, lower_case, as.character(digits), special_chars)
  
  # Generate the password
  password <- paste(sample(all_chars, length, replace = TRUE), collapse = "")
  
  return(password)
}

# Prompt user for the length of the password
password_length <- as.integer(readline(prompt = "Enter the desired length of the password: "))

# Validate the password length
if (is.na(password_length) || password_length <= 0) {
  cat("Invalid length. Length must be a positive integer.\n")
} else {
  # Generate and display the password
  password <- generate_password(password_length)
  cat("Generated password:\n", password, "\n")
}
