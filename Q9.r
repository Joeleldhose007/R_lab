# Function to perform Run-Length Encoding
run_length_encoding <- function(input_string) {
  # Initialize variables
  compressed_string <- ""
  n <- nchar(input_string)
  
  if (n == 0) {
    return(compressed_string)  # Return empty string if input is empty
  }
  
  # Initialize the first character and its count
  current_char <- substr(input_string, 1, 1)
  count <- 1
  
  # Loop through the string starting from the second character
  for (i in 2:n) {
    char <- substr(input_string, i, i)
    if (char == current_char) {
      count <- count + 1
    } else {
      # Append the current character and its count to the compressed string
      compressed_string <- paste0(compressed_string, current_char, count)
      # Reset for the new character
      current_char <- char
      count <- 1
    }
  }
  
  # Append the last character and its count
  compressed_string <- paste0(compressed_string, current_char, count)
  
  return(compressed_string)
}

# Main program
cat("Enter a string to compress using Run-Length Encoding:\n")
input_string <- readline(prompt = "String: ")

# Perform Run-Length Encoding and display the result
compressed_string <- run_length_encoding(input_string)
cat("Compressed string:\n", compressed_string, "\n")
