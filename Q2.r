# Function to encrypt a sentence using a Caesar cipher
caesar_cipher_encrypt <- function(sentence, shift) {
  
  # Helper function to shift a single character
  shift_char <- function(char, shift) {
    if (grepl("[a-z]", char)) {
      # Shift lowercase letters
      base <- 'a'
      shifted <- (as.numeric(charToRaw(char)) - as.numeric(charToRaw(base)) + shift) %% 26
      return(rawToChar(as.raw(shifted + as.numeric(charToRaw(base)))))
    } else if (grepl("[A-Z]", char)) {
      # Shift uppercase letters
      base <- 'A'
      shifted <- (as.numeric(charToRaw(char)) - as.numeric(charToRaw(base)) + shift) %% 26
      return(rawToChar(as.raw(shifted + as.numeric(charToRaw(base)))))
    } else {
      # Non-alphabetic characters remain unchanged
      return(char)
    }
  }
  
  # Apply the shift to each character in the sentence
  encrypted_sentence <- sapply(strsplit(sentence, NULL)[[1]], shift_char, shift = shift)
  
  # Combine the characters into a single string
  encrypted_sentence <- paste(encrypted_sentence, collapse = "")
  
  return(encrypted_sentence)
}

# Prompt user for inputs
sentence <- readline(prompt = "Enter the sentence to encrypt: ")
shift <- as.integer(readline(prompt = "Enter the shift value (integer): "))

# Validate shift value
if (is.na(shift)) {
  cat("Shift value must be a valid integer.\n")
} else {
  # Call the function with user inputs
  encrypted_sentence <- caesar_cipher_encrypt(sentence, shift)
  cat("Encrypted sentence:\n", encrypted_sentence, "\n")
}
