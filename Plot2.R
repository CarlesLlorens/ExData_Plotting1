##########################################################################################################
# Coursera Exploratory Data Analysis
# Assignment 1. 
# Program               : Plot2.R
# Version               : V1.0
# Date creation         : 04/12/2014
# Date last modification: 04/12/2014
#
# Description:
# Plot 2 program Assignment 1 
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

# Plotting Plot2.png
# ******************

png(filename = "plot2.png", width = 480, height = 480, units = "px", bg = "transparent")
plot(newData$DateTime, newData$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()
