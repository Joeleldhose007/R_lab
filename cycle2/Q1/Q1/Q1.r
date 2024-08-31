
data=iris


plot(iris$Sepal.Length, iris$Petal.Length,
     xlab = "Sepal Length (cm)",        
     ylab = "Petal Length (cm)",       
     main = "Scatterplot of Sepal Length vs. Petal Length", 
     col = iris$Species,                
     pch = 19)                          


legend("topright",                      
       legend = levels(iris$Species),   
       col = 1:3,                       
       pch = 19)                        
