
data(mtcars)


carb_colors <- c("red", "blue", "green", "purple", "orange")
carb_sizes <- c(2, 4, 6, 8, 10)


plot(mtcars$disp, mtcars$wt,
     col = carb_colors[as.factor(mtcars$carb)], 
     pch = 16,                                
     cex = carb_sizes[as.factor(mtcars$carb)] / max(carb_sizes), 
     xlab = "Displacement (cu in)",            
     ylab = "Weight (1000 lbs)",                
     main = "Scatterplot of Displacement vs. Weight") 


smooth <- loess(wt ~ disp, data = mtcars)
lines(mtcars$disp, predict(smooth, newdata = mtcars), col = "black", lwd = 2)


legend("topright",                          
       legend = paste("Carburetors:", unique(mtcars$carb)), 
       col = carb_colors,                   
       pch = 16,                           
       pt.cex = carb_sizes / max(carb_sizes), 
       title = "Number of Carburetors")    
