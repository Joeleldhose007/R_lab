# Function to perform tasks on the input paragraph
process_text <- function(paragraph, word_to_replace, replacement_word) {
  
  # Convert paragraph to lowercase and remove punctuation
  cleaned_paragraph <- tolower(paragraph)
  cleaned_paragraph <- gsub("[[:punct:]]", "", cleaned_paragraph)
  
  # Split the paragraph into words
  words <- unlist(strsplit(cleaned_paragraph, "\\s+"))
  
  # Count the total number of words
  total_words <- length(words)
  
  # Calculate the average word length
  word_lengths <- nchar(words)
  average_word_length <- mean(word_lengths)
  
  # Identify the longest word
  longest_word <- words[which.max(word_lengths)]
  
  # Replace all occurrences of a specific word with another word
  words_replaced <- gsub(word_to_replace, replacement_word, words)
  replaced_paragraph <- paste(words_replaced, collapse = " ")
  
  # Print results
  cat("Total number of words:", total_words, "\n")
  cat("Average word length:", average_word_length, "\n")
  cat("Longest word:", longest_word, "\n")
  cat("Paragraph with replacements:\n", replaced_paragraph, "\n")
}

# Prompt user for inputs
paragraph <- readline(prompt = "Enter the paragraph of text: ")
word_to_replace <- readline(prompt = "Enter the word to replace: ")
replacement_word <- readline(prompt = "Enter the replacement word: ")

# Call the function with user inputs
process_text(paragraph, word_to_replace, replacement_word)
