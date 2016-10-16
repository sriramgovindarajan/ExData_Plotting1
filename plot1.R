data<- read.table("household_power_consumption.txt", sep=";", header = T,stringsAsFactors = F, dec = ".")
data<- subset(data, data$Date %in% c("1/2/2007","2/2/2007"))
data$Global_active_power<- as.numeric(data$Global_active_power)

png("plot1.png", width = 480, height = 480)
hist(data$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", ylab = "Frequency", col="red")

dev.off()