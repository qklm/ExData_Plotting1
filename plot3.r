library(ggplot2)

data1<-read.table("./household_power_consumption.txt", header = T, stringsAsFactors = F, sep = ";", na.strings = "?")
data2<-subset(data1, data1$Date == "1/2/2007" | data1$Date == "2/2/2007")
datetime<-strptime(paste(data2$Date, data2$Time, sep = " "), format = "%d/%m/%Y %H:%M:%S")

png("plot3.png")
plot(datetime,data2$Sub_metering_1, ylab = "Energy Submetering", xlab=" ")
     lines(datetime, data2$Sub_metering_2, col = "red")
     lines(datetime, data2$Sub_metering_3, col = "blue")
     legend("topright", c(data2$Sub_metering_1,data2$Sub_metering_2,data2$Sub_metering_3),legend = 1, col=c("black","red","blue"))
dev.off()