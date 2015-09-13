# PROJECT 1 EXPLORATORY DATA ANALYSIS
# This code is used to make the fourth plot which is a multiple base plot

setwd("C:/maramba/ExData_Plotting1")
source("datareading.R")

# open a file device, in this case 'png', with the parameters left to defaults
# (width and height already set to 480 pixels as default values)
png("plot4.png")
par(mfrow=c(2,2), bg = "transparent")
# upper left plot
plot(subdata$Time, subdata$Global_active_power, type = "l", xlab = "",
     ylab = "Global Active Power")

# upper right plot (mfrow is row wise)
plot(subdata$Time, subdata$Voltage, type = "l", xlab = "datetime",
     ylab = "Voltage")

# lower left plot
plot(subdata$Time, subdata$Sub_metering_1, type = "l", xlab = "",
     ylab = "Energy sub metering")
lines(subdata$Time, subdata$Sub_metering_2, type = "l", col = "red")
lines(subdata$Time, subdata$Sub_metering_3, type = "l", col = "blue")
legend("topright", legend = names(subdata[7:9]), col = c("black", "red", "blue"),
       lwd = 1, bty="n", cex = 0.9)

# lower right plot
plot(subdata$Time, subdata$Global_reactive_power, type = "l", xlab = "datetime",
     ylab = "Global_reactive_power")
dev.off()
