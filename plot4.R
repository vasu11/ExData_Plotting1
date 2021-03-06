
--load the data
data <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", dec = ".", na.strings = "?")
data_feb <- subset(data,Date == "1/2/2007" | Date == "2/2/2007")
rm(data)

png('plot4.png')
par(mfrow=c(2,2))
plot(data_feb$day,data_feb$Global_active_power, type = "l", ylab = "Global Active Power")
plot(data_feb$day,data_feb$Voltage, type = "l")
plot(data_feb$day,data_feb$Sub_metering_1, ylim=range(data_feb[c("Sub_metering_1","Sub_metering_2","Sub_metering_3")]),type = "l",col=2,ylab = "Energy Submetering")
lines(data_feb$day,data_feb$Sub_metering_2, type = "l",col=3)
lines(data_feb$day,data_feb$Sub_metering_3, type = "l",col=4)
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1,col=2:4)
plot(data_feb$day,data_feb$Global_reactive_power, type = "l")
dev.off()
