
--load the data
data <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", dec = ".", na.strings = "?")
data_feb <- subset(data,Date == "1/2/2007" | Date == "2/2/2007")
rm(data)

png('plot1.png')
hist(data_feb$Global_active_power, col="red",xlab = "Global Active Power (kilowatts)", main = "Global Active Power" )
dev.off()
