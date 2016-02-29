
--load the data
data <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", dec = ".", na.strings = "?")
data_feb <- subset(data,Date == "1/2/2007" | Date == "2/2/2007")
rm(data)

data_feb$datetime <- paste(data_feb$Date, data_feb$Time)
data_feb$day <- strptime(data_feb$datetime, format = "%d/%m/%Y %H:%M:%S")

png('plot2.png')
plot(data_feb$day,data_feb$Global_active_power, type = "l", ylab = "Global Active Power (kilowatts)")
dev.off()
