##########################################################################################################
# Coursera Exploratory Data Analysis
# Assignment 1. 
# Program               : EDA_Assignment_1_Main.R
# Version               : V1.0
# Date creation         : 04/12/2014
# Date last modification: 04/12/2014
#
# Description:
# Main program Assignment 1 
#
# Load Data
# Load a dataset into R that has 2,075,259 rows and 9 columns. 
# We will only be using data from the dates 2007-02-01 and 2007-02-02. 
# Note that in this dataset missing values are coded as ?.
#
# This program serves as the main program for program Plot1.R and Plot2.R
#
# Our overall goal here is simply to examine how household energy usage varies over a 2-day period 
# in February, 2007. 
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
#    For this, you need set your working directory in line 45 of the script.
#
##########################################################################################################

# Set-up and Initialization Environment
# *************************************

# Clean up workspace
rm(list=ls())

# Set working directory
setwd("C:/Coursera/Exploratory_Data_Analysis")

# Getting Data
# ************

filename <- "./data/household_power_consumption.txt"
data <- read.table(filename, header = TRUE, sep = ";", colClasses = c("character", "character", rep("numeric",7)), na = "?")

#dim(data) # 2075259 9
cat(sprintf("Original dataset\n"))
cat(sprintf("Original data contains %d observations and %d variables", dim(data)[1],dim(data)[2]))

## Select only days 01/02/07 and 02/02/07
subset <- data$Date == "1/2/2007" | data$Date == "2/2/2007"
newData <- data[subset, ]

x <- paste(newData$Date, newData$Time)
newData$DateTime <- strptime(x, "%d/%m/%Y %H:%M:%S")
rownames(newData) <- 1:nrow(newData)

#dim(newData) # 2880   10
cat(sprintf("New dataset "))
cat(sprintf("New data contains %d observations and %d variables", dim(newData)[1],dim(newData)[2]))
