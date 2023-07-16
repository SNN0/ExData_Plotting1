unzip('data/exdata_data_household_power_consumption.zip',exdir = './data')

#read data
data = read.csv('data/household_power_consumption.txt', header=TRUE, sep = ';', na.strings = '?' )

# Subset the data for the dates 2007-02-01 and 2007-02-02
data$Date = as.Date(data$Date, format = '%d/%m/%Y')
subset_data = subset(data, Date >= as.Date('2007-02-01') & Date <= as.Date('2007-02-02'))

#Plot 1
png('plot1.png', width = 480, height = 480)
plot1 = hist(subset_data$Global_active_power, col = 'red', main = 'Global Active Power', xlab = 'Global Active Power(kilowatts)')
dev.off()
