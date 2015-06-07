plot2 <- function(){
    
    if(is.null(data))
        data <- load_data()
    
    png("plot2.png", width=480, height=480)   
    
    plot(data$Time,
         as.numeric(as.character(data$Global_active_power)),
         type = "l",
         xlab = "",
         ylab = "Global Active Power (kilowatts)")
    
    dev.off()
}