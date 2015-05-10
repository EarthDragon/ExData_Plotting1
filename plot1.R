# set the working directory
setwd("~/EriksDocuments/Coursera/04 Exploratory Data Analysis/Project 1")

# read in the file
data <- read.table(file="household_power_consumption.txt", sep=";", na.strings="?",header=TRUE)

#look at the data frame
str(data)

#change the names for easier reference
names(data) <- c("date", "time","gap","grp","volt","gi","sm1","sm2","sm3")

#getting the data from only Feb 1, 2007 and Feb 2, 2007
dat <- subset(data,(data$date=="1/2/2007" | data$date=="2/2/2007"))

#making plot 1
#the default width and height are both 480
png("plot1.png")
hist(dat$gap, col="red", main="Global Active Power",
     xlab="Global Active Power (kilowatts)",
     ylab="Frequency")
dev.off()