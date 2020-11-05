
#load in table, and pull necessary dates

hhpow <- read.table("./household_power_consumption.txt", header = TRUE, stringsAsFactors = FALSE)
subpow <- subset(hhpow,hhpow$Date == "1/2/2007"| hhpow$Date == "2/2/2007")

#'x' must be numeric
GAP<-as.numeric(subpow$Global_active_power)

#default png() size is h=480 & w=480

png("plot1.png")
hist(GAP, col = "Red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)", ylab = "Frequency")
dev.off()