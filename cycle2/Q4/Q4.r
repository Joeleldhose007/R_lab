# Load the mtcars dataset
data(mtcars)

# Calculate mean and standard deviation of mpg
mean_mpg <- mean(mtcars$mpg)
sd_mpg <- sd(mtcars$mpg)

# Create the histogram
hist(mtcars$mpg,
     breaks = 10,                        # Number of bins
     col = colorRampPalette(c("lightblue", "darkblue"))(10), # Shades of blue
     xlab = "Miles per Gallon (mpg)",    # Label for the x-axis
     ylab = "Frequency",                 # Label for the y-axis
     main = "Histogram of Miles per Gallon") # Title of the plot

# Add mean and standard deviation to the plot
text(mean_mpg, max(table(cut(mtcars$mpg, breaks = 10))) * 0.9,    # Position of the text
     labels = paste("Mean: ", round(mean_mpg, 2)),                # Mean label
     pos = 4, cex = 0.8, col = "black")                            # Text properties

text(mean_mpg, max(table(cut(mtcars$mpg, breaks = 10))) * 0.8,    # Position of the text
     labels = paste("SD: ", round(sd_mpg, 2)),                    # Standard deviation label
     pos = 4, cex = 0.8, col = "black")                            # Text properties
