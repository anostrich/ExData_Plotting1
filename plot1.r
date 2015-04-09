data_file <-read.table("household_power_consumption.txt", sep = ";", header = TRUE)
data_oper <-subset(data_file, Date %in% c("1/2/2007", "2/2/2007"))
data_oper <-data_oper[!data_oper[,3] %in% "?",]
png("Plot1.png")
hist(as.numeric(as.character(data_oper[,3])), main = "Global Active Power", col = "red",xlab="Global Active Power(kilowatts)")
dev.off()