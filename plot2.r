data_file <-read.table("household_power_consumption.txt", sep = ";", header = TRUE)
data_oper <-subset(data_file, Date %in% c("1/2/2007", "2/2/2007"))
data_oper[,1]<-sub("1/2/2007","01/02/2007", data_oper[,1])
data_oper[,1]<-sub("2/2/2007","02/02/2007", data_oper[,1])
data_oper[,10]<-paste(as.character(data_oper[,1]), as.character(data_oper[,2]))
data_oper <-transform(data_oper, V10 = as.POSIXct(V10, format = "%d/%m/%Y %H:%M:%S"))
png("Plot2.png")
plot(data_oper[,10], as.numeric(as.character(data_oper[,3])),type="l", ylab="Global Active Power (kilowatts)", xlab= "")
dev.off()
