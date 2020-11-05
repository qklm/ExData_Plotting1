data1<-read.table("./household_power_consumption.txt", header = T, stringsAsFactors = F, sep = ";", na.strings = "?")
data2<-subset(data1, data1$Date == "1/2/2007" | data1$Date == "2/2/2007")


gap<-as.numeric(data2$Global_active_power)
datetime<-strptime(paste(data2$Date, data2$Time, sep = " "), format = "%d/%m/%Y %H:%M:%S")

png("plot2.png")
plot(datetime, gap, type='l', ylab="Global Active Power", xlab = "")
dev.off()