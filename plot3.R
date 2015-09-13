# PROJECT 1 EXPLORATORY DATA ANALYSIS
# This code is used to make the third plot which is a time series for variable
# Sub_metering_1 till Sub_metering_3

setwd("C:/maramba/ExData_Plotting1")
source("datareading.R")

# open a file device, in this case 'png', with the parameters left to defaults
# (width and height already set to 480 pixels as default values)
png("plot3.png")
par(bg = "transparent")
plot(subdata$Time, subdata$Sub_metering_1, type = "l", xlab = "",
     ylab = "Energy sub metering")
lines(subdata$Time, subdata$Sub_metering_2, type = "l", col = "red")
lines(subdata$Time, subdata$Sub_metering_3, type = "l", col = "blue")
legend("topright", legend = names(subdata[7:9]), col = c("black", "red", "blue"), lwd = 1)
dev.off()
