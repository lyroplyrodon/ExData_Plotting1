hpc <- read.table("household_power_consumption.txt", header=TRUE, na.strings="?", sep=";")
hpc_s<-hpc[(hpc$Date=="1/2/2007"|hpc$Date=="2/2/2007"),]
hpc_s$DateTime <- strptime(paste(hpc_s$Date, hpc_s$Time), "%d/%m/%Y %H:%M:%S")
png(filename = "Plot1.png", width = 480, height = 480)
hist(hpc_s$Global_active_power, col="red", xlab="Global Active Power (kilowatts)", main="Global Active Power")
dev.off()