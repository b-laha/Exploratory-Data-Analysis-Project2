
# Exploratory Data Analysis - Assignment 2 - Q. #1
# Bhaswati Laha December 1, 2016

setwd("C:/Users/bhasw/Desktop/CourseraDataScience/Exploratory Data Analysis/Project2")


  NEI <- readRDS("summarySCC_PM25.rds") 

  SCC <- readRDS("Source_Classification_Code.rds")


# Have total emissions from PM2.5 decreased in the United States from 1999 to 2008? 
# Using the base plotting system, make a plot showing the total PM2.5 emission from all sources 
# for each of the years 1999, 2002, 2005, and 2008.

# Aggregate by sum the total emissions by year
Emissions <- aggregate(NEI[, 'Emissions'], by=list(NEI$year), FUN=sum)
Emissions$PM <- round(Emissions[,2]/1000,2)

png("plot1.png", width=480, height=480)


barplot(Emissions$PM, names.arg=Emissions$Group.1, 
        main=expression('Total Emission of PM'[2.5]),
        xlab='Year', ylab=expression(paste('PM', ''[2.5], ' in Kilotons')))



dev.off()




