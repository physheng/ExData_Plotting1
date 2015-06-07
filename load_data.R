# Load dataset
load_data <- function(){
    filename <- "household_power_consumption.txt"
    data <- read.csv(filename,sep = ";")
    data$Time <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")
    data$Date <- as.Date(data$Date, "%d/%m/%Y")
    dates <- as.Date(c("2007-02-01", "2007-02-02"), "%Y-%m-%d")
    data <- subset(data, Date %in% dates)
    return(data)
}
