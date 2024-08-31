
data=mtcars


cyl_am_table <- table(mtcars$cyl, mtcars$am)


am_colors <- c("lightblue", "lightcoral")
names(am_colors) <- c("0", "1")  


barplot(cyl_am_table,
        beside = TRUE,                    
        col = am_colors,                   
        legend = rownames(cyl_am_table),  
        args.legend = list(title = "Cylinders",  
                           fill = am_colors,  
                           legend = c("Automatic", "Manual")), 
        xlab = "Number of Cylinders",       
        ylab = "Count",                     
        main = "Count of Cars by Number of Cylinders and Transmission Type") 
