plot4 <- function(){
    
    if(is.null(data))
        data <- load_data()
    
    png("plot4.png", width=480, height=480)   
    
    par(mfrow = c(2,2))
    # Plot 1
    plot(data$Time,
         as.numeric(as.character(data$Global_active_power)),
         col = "black", 
         type = "l", xlab = "", ylab = "Global Active Power")
    
    # Plot 2
    plot(data$Time,
         data$Voltage,
         col = "black", 
         type = "l", xlab = "datatime", ylab = "Voltage")
    
    # Plot 3
    plot(data$Time, data$Sub_metering_1, col = "black", 
         type = "l", xlab = "", ylab = "Energy sub meterting")
    lines(data$Time, data$Sub_metering_2, col = "red") 
    lines(data$Time, data$Sub_metering_3, col = "blue")
    
    legend("topright", lty = 1, col = c("black","red","blue"),
           c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
    
    # Plot 4
    plot(data$Time, data$Global_reactive_power, col = "black", 
         type = "l", xlab = "datetime", ylab = "Global_reactive_power")
    
    dev.off()
}