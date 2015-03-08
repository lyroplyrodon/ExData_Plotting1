hpc <- read.table("household_power_consumption.txt", header=TRUE, na.strings="?", sep=";")
hpc_s<-hpc[(hpc$Date=="1/2/2007"|hpc$Date=="2/2/2007"),]
hpc_s$DateTime <- strptime(paste(hpc_s$Date, hpc_s$Time), "%d/%m/%Y %H:%M:%S")
png(filename = "Plot3.png", width = 480, height = 480)
plot(hpc_s$DateTime, hpc_s$Sub_metering_1, type = "l", col = "black", ylab="Energy sub metering", xlab = "")
lines(hpc_s$DateTime, hpc_s$Sub_metering_2, col = "red")
lines(hpc_s$DateTime, hpc_s$Sub_metering_3, col = "blue")
legend("topright", lty=1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()