
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

#adding a column that reflects the temporal order of the data, and
#naming thes column "order"
#0 represents minute 0 on February 1,2007
dat[,10] <- 0:2879
names(dat)[10] <- "order"


#making plot 2
png("plot2.png")

#draw the graph without the axes
plot(dat$order,dat$gap,type="l",
     ylab="Global Active Power (kilowatts)",xlab="", axes=FALSE,
     frame=TRUE)

#draw the axes with appropriate markings and labels
axis(side=1, at=c(0,1440,2880), labels=c("Thu","Fri","Sat"))
axis(side=2, at=c(0,2,4,6), labels=c(0,2,4,6))
dev.off()

