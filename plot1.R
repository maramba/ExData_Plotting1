# PROJECT 1 EXPLORATORY DATA ANALYSIS
# This code is used to make the first plot which is a histogram for variable
# Global_active_power

setwd("C:/maramba/ExData_Plotting1")
source("datareading.R")

# open a file device, in this case 'png', with the parameters left to defaults
# (width and height already set to 480 pixels as default values)
png("plot1.png")
par(bg = "transparent")
hist(subdata$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", col = "red")
dev.off()
