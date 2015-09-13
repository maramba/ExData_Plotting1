# PROJECT 1 EXPLORATORY DATA ANALYSIS
# This code is used to load "Individual household electric power consumption Data Set"

# check if the data directory exists
setwd("C:/maramba/ExData_Plotting1")
fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
if(!dir.exists("data")) {
        dir.create("data")
}

# check if the txt file that contains the data we need is in data directory
txtname <- "./data/household_power_consumption.txt"
if(!file.exists(txtname)) {
        zipname <- "data/exdata_data_household_power_consumption.zip"
        download.file(fileUrl, destfile = fname, mode = "wb")
        dateDownloaded <- date()
        unzip(paste(getwd(), zipname, sep = "/"), exdir = "./data", overwrite = FALSE)
}

# read table and assign the corresponding class for each column
mycols <- c("character", "character", rep("numeric",7))
mydat <- read.table(txtname, header = TRUE, sep = ";", na.strings = "?", colClasses = mycols)

# convert the date and time from char to appropriate format (date & time)
mydat$Time <- strptime(paste(mydat$Date, mydat$Time), "%d/%m/%Y %H:%M:%S")
mydat$Date <- as.Date(mydat$Date, "%d/%m/%Y")

# subsetting the data needed and remove the superset data
parts <- as.Date(c("2007-02-01", "2007-02-02"), "%Y-%m-%d")
subdata <- subset(mydat, Date %in% parts)
rm(mydat)
