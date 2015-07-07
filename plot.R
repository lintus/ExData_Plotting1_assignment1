## Getting the raw dataset
Raw_Data <- read.csv("household_power_consumption.txt", sep=";", na.strings="?")


## Subsetting the raw data
Raw_Data <- subset(Raw_Data, Date == "1/2/2007" | Date == "2/2/2007")

##Date Conversion
Raw_Data[, "Date"] <- as.Date(strptime(Raw_Data[, "Date"], format='%d/%m/%Y'))


## Plotting Plot 1 and saving the file 
png(filename="plot1.png")
hist(Raw_Data[,"Global_active_power"], col="red", main="Global Active power",xlab="Global Active power (kilowatts)" )
dev.off()