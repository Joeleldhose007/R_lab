
data(mtcars)


cyl_colors <- c("red", "green", "blue")


plot(mtcars$disp, mtcars$mpg,
     xlab = "Displacement (cu in)",        
     ylab = "Miles per Gallon (mpg)",     
     main = "Scatterplot of MPG vs. Displacement", 
     col = cyl_colors[as.factor(mtcars$cyl)], 
     pch = 19)                               


smooth <- loess(mpg ~ disp, data = mtcars)
lines(mtcars$disp, predict(smooth, newdata = mtcars), col = "black", lwd = 2)

legend("topright",                       
       legend = paste("Cylinders:", unique(mtcars$cyl)),
       col = cyl_colors,                   
       pch = 19,                           
       title = "Number of Cylinders")     
