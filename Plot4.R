##########################################################################################################
# Coursera Exploratory Data Analysis
# Assignment 1. 
# Program               : Plot4.R
# Version               : V1.0
# Date creation         : 04/12/2014
# Date last modification: 04/12/2014
#
# Description:
# Plot 4 program Assignment 1 
#
# Your task is to reconstruct the plots that appear in assignment.
# All of which were constructed using the base plotting system.
# For each plot you should:
# Construct the plot and save it to a PNG file with a width of 480 pixels and a height of 480 pixels.
# Name each of the plot files as plot1.png, plot2.png, etc.
# Create a separate R code file (plot1.R, plot2.R, etc.) that constructs 
# the corresponding plot, i.e. code in plot1.R constructs the plot1.png plot. 
# Your code file should include code for reading the data so that the plot can be fully reproduced. 
# You should also include the code that creates the PNG file.
#
# IMPORTANT NOTE:
#
#    You must set-up the script according to your environment.
#    For this, you need set your working directory in line 36 of the script.
#
##########################################################################################################

# 0. Set-up and Initialization Environment
# ****************************************

# Clean up workspace
rm(list=ls())

# Set working directory
setwd("C:/Coursera/Exploratory_Data_Analysis")

source("EDA_Assignment_1_Main.R")

# Plotting Plot4.png
# ******************

png(filename = "plot4.png", width = 480, height = 480, units = "px", bg = "transparent")
par(mfrow = c(2, 2))

## Image Top Left
plot(newData$DateTime, newData$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power")

## Image Top Right
plot(newData$DateTime, newData$Voltage, type = "l", xlab = "datetime", ylab = "Voltage")

## Image Bottom Left
plot(newData$DateTime, newData$Sub_metering_1, type = "l", col = "black", xlab = "", ylab = "Energy sub metering")
lines(newData$DateTime, newData$Sub_metering_2, col = "red")
lines(newData$DateTime, newData$Sub_metering_3, col = "blue")
legend("topright", bty = "n", col = c("black", "red", "blue"), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd = 1)

## Image Bottom Right
plot(newData$DateTime, newData$Global_reactive_power, type = "l", col = "black", xlab = "datetime", ylab = colnames(newData)[4])

dev.off()