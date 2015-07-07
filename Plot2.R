## Getting the raw dataset
Raw_data <- read.csv("household_power_consumption.txt", sep=";", na.strings="?")

## Subsetting the raw data
Raw_data <- subset(Raw_data, Date == "1/2/2007" | Date == "2/2/2007")

##Date Conversion
dt <- strptime(paste(Raw_data$Date, Raw_data$Time), format="%d/%m/%Y %H:%M:%S")

## Plotting Plot 2 and saving the file 
png(filename="plot2.png")
plot(x=dt, y=Raw_data[,"Global_active_power"], type="l",ylab="Global Active Power (kilowatts)", main="", xlab="")
dev.off()