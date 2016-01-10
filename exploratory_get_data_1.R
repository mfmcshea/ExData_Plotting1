#Program Name: exploratory_get_data_1.R
#Name: mfmcshea
#Revisions on Final Draft: January 9, 2016, 7:46PM
#Purpose: To obtain and prepare Project 1 data

#Set working directory
setwd ("C:/Users/McShea/Desktop/DataScience/ExploratoryData/")

#The following downloads the data onto my computer
if(!file.exists("./project1data")) {
  dir.create("./project1data")
}
fileUrl<-"http://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"

download.file(fileUrl, destfile ="./project1data/EDA1.zip")
dateDownloaded <- date()

#Unzip the file into the /project1data/directory
unzip(zipfile="./project1data/EDA1.zip", exdir="./project1data")

filePath <-"C:/Users/McShea/Desktop/DataScience/ExploratoryData/project1data/household_power_consumption.txt"

