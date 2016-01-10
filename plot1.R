#Program Name: plot1.R
#Name: mfmcshea
#Revisions on Final Draft: January 9, 2016, 7:50PM
#Purpose: To create plot 1

setwd ("C:/Users/McShea/Desktop/DataScience/ExploratoryData/project1data")
dataFile <- "C:/Users/McShea/Desktop/DataScience/ExploratoryData/project1data/household_power_consumption.txt"
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

str(subSetData)
globalActivePower <- as.numeric(subSetData$Global_active_power)
png(filename = "plot1.png", 
    width=480, height=480)
hist(globalActivePower, 
     col="red", 
     main="Global Active Power", 
     xlab="Global Active Power (kilowatts)", 
     breaks=12, ylim = c(0, 1200))
dev.off()