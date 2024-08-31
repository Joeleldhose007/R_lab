
data(mtcars)


gear_shapes <- c(19, 17, 15)  


boxplot(hp ~ gear, data = mtcars,
        col = "lightgray",              
        pch = gear_shapes[as.factor(mtcars$gear)], 
        xlab = "Number of Gears",        
        ylab = "Horsepower (hp)",        
        main = "Boxplot of Horsepower by Number of Gears") 


legend("topright",                        
       legend = paste("Gears:", unique(mtcars$gear)), 
       pch = gear_shapes,                    
       col = "black",                       
       title = "Number of Gears")            


outliers <- boxplot.stats(mtcars$hp)$out
text(x = rep(1:length(unique(mtcars$gear)), times = sapply(unique(mtcars$gear), function(g) sum(mtcars$gear == g))),
     y = mtcars$hp[mtcars$hp %in% outliers],
     labels = as.character(mtcars$hp[mtcars$hp %in% outliers]),
     pos = 4, cex = 0.7, col = "red") 
