#Program Name: plot2.R
#Name: mfmcshea
#Revisions on Final Draft: January 9, 2016, 7:55PM
#Purpose: To create plot 2

setwd ("C:/Users/McShea/Desktop/DataScience/ExploratoryData/project1data")
dataFile <- "C:/Users/McShea/Desktop/DataScience/ExploratoryData/project1data/household_power_consumption.txt"
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

#str(subSetData)
datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(subSetData$Global_active_power)
png("plot2.png", width=480, height=480)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()