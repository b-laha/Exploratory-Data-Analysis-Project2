
# Exploratory Data Analysis - Assignment 2 - Q. #2
# Bhaswati Laha December 1, 2016

setwd("C:/Users/bhasw/Desktop/CourseraDataScience/Exploratory Data Analysis/Project2")


  NEI <- readRDS("summarySCC_PM25.rds") 

  SCC <- readRDS("Source_Classification_Code.rds")


  # Have total emissions from PM2.5 decreased in the Baltimore City, Maryland (fips == "24510") 
  # from 1999 to 2008? Use the base plotting system to make a plot answering this question.
  
  MD <- subset(NEI, fips=='24510')

  png("plot2.png", width=480, height=480)

  barplot(tapply(X=MD$Emissions, INDEX=MD$year, FUN=sum), 
        main='Total Emission in Baltimore City, MD', 
        xlab='Year', ylab=expression('PM'[2.5]))



  dev.off()




