unzip('data/exdata_data_household_power_consumption.zip',exdir = './data')

#read data
data = read.csv('data/household_power_consumption.txt', header=TRUE, sep = ';', na.strings = '?' )

# Subset the data for the dates 2007-02-01 and 2007-02-02
data$Date = as.Date(data$Date, format = '%d/%m/%Y')
subset_data = subset(data, Date >= as.Date('2007-02-01') & Date <= as.Date('2007-02-02'))

#Plot2 

time_axis = as.POSIXct(paste(subset_data$Date,subset_data$Time)) # merge date and time

png('plot2.png', width = 480, height = 480)
plot(time_axis, subset_data$Global_active_power, xlab = '', ylab='Global Active Power (kilowatts)', type = 'l' )
dev.off()
