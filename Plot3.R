## Getting the raw dataset
Raw_data <- read.csv("household_power_consumption.txt", sep=";", na.strings="?")

## Subsetting the raw data
Raw_data <- subset(Raw_data, Date == "1/2/2007" | Date == "2/2/2007")

##Date Conversion
dt <- strptime(paste(Raw_data$Date, Raw_data$Time), format="%d/%m/%Y %H:%M:%S")


## Plotting Plot 3 and saving the file 
png(filename="plot3.png")
plot(x=dt, y=Raw_data[,"Sub_metering_1"], type="l",ylab="Energy sub metering", main="", xlab="")
lines(x=dt, y=Raw_data[,"Sub_metering_2"], col="red")
lines(x=dt, y=Raw_data[,"Sub_metering_3"], col="blue")
legend("topright", lty=1, col = c("black", "blue", "red"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()
