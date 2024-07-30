# Recursive function to reverse a list
reverse_list <- function(lst) {
  # Base case: if the list is empty or has only one element
  if (length(lst) <= 1) {
    return(lst)
  }
  
  # Recursive case: reverse the rest of the list and append the first element at the end
  first_element <- lst[[1]]
  rest_reversed <- reverse_list(lst[-1])
  
  # Combine the reversed rest with the first element
  return(c(rest_reversed, first_element))
}

# Main program
cat("Enter a list of elements (comma-separated):\n")
input_string <- readline(prompt = "List: ")

# Convert input string to a list of elements
# Assuming the user enters integers separated by commas
input_list <- as.list(as.numeric(unlist(strsplit(input_string, ","))))

# Reverse the list and display the result
reversed_list <- reverse_list(input_list)
cat("Reversed list:\n")
print(reversed_list)
