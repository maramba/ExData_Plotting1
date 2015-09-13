# PROJECT 1 EXPLORATORY DATA ANALYSIS
# This code is used to make the second plot which is a time series for variable
# Global_active_power

setwd("C:/maramba/ExData_Plotting1")
source("datareading.R")

# open a file device, in this case 'png', with the parameters left to defaults
# (width and height already set to 480 pixels as default values)
png("plot2.png")
par(bg = "transparent")
plot(subdata$Time, subdata$Global_active_power, type = "l", xlab = "",
     ylab = "Global Active Power (kilowatts)")
dev.off()
