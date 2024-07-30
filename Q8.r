# Function to clean and check if a string is a palindrome
is_palindrome <- function(input_string) {
  # Remove spaces and punctuation
  cleaned_string <- gsub("[^a-zA-Z0-9]", "", input_string)
  
  # Convert to lowercase
  cleaned_string <- tolower(cleaned_string)
  
  # Check if the cleaned string reads the same forwards and backwards
  return(cleaned_string == rev(strsplit(cleaned_string, NULL)[[1]]) %>% paste(collapse = ""))
}

# Main program
cat("Enter a string to check if it's a palindrome:\n")
input_string <- readline(prompt = "String: ")

# Check if the input string is a palindrome
if (is_palindrome(input_string)) {
  cat("The string is a palindrome.\n")
} else {
  cat("The string is not a palindrome.\n")
}
