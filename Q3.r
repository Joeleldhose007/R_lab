# Function to validate and process student records
process_student_records <- function() {
  
  # Initialize vectors to store valid student data
  valid_ages <- c()
  
  repeat {
    # Read student record input from the user
    name <- readline(prompt = "Enter student's name (or type 'done' to finish): ")
    
    # Exit loop if user types 'done'
    if (tolower(name) == "done") {
      break
    }
    
    # Read and validate age
    age_input <- readline(prompt = "Enter student's age: ")
    age <- as.integer(age_input)
    
    if (is.na(age) || age <= 0) {
      cat("Invalid age. Age must be a positive integer.\n")
      next
    }
    
    # Read and validate grade
    grade <- toupper(readline(prompt = "Enter student's grade (A, B, C, D, F): "))
    
    valid_grades <- c("A", "B", "C", "D", "F")
    if (!(grade %in% valid_grades)) {
      cat("Invalid grade. Grade must be one of A, B, C, D, F.\n")
      next
    }
    
    # If all inputs are valid, store the age
    valid_ages <- c(valid_ages, age)
  }
  
  # Calculate and display the average age of students with valid records
  if (length(valid_ages) > 0) {
    average_age <- mean(valid_ages)
    cat("Average age of students with valid records:", average_age, "\n")
  } else {
    cat("No valid records to calculate average age.\n")
  }
}

# Call the function to start processing
process_student_records()
