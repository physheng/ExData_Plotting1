plot1 <- function(){
    
    if(is.null(data))
        data <- load_data()
    
    png("plot1.png", width=480, height=480)   
    
    hist(as.numeric(as.character(data$Global_active_power)),
         main = "Global Active Power",
         xlab = "Global Active Power (kilowatts)",
         ylab = "Frequency",
         col = "red" )
    
    dev.off()
}