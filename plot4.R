plot4 <- function() {
  fn <- "/Users/JimBarker/R Source/ExploratoryDataAnalysis Class/hpc_subset.csv"
  df <- read.csv(fn,stringsAsFactors=FALSE,header=TRUE)
  fn <- "/Users/JimBarker/R_repo/ExploratoryDataAnalysis/asgn1/ExData_Plotting1/plot4.png"
  png(filename=fn,height=480,width=480)
  # Panel 1 *************************************
  txt <- c("Thu","Fri","Sat")
  tics <- c(0:6)
  x <- df$Global_active_power
  y <- df$Date
  old.par <- par(mfrow=c(2,2))
  plota <- plot(x,NULL,type="l",ylab="Global Active Power (kilowatts)",xlab="",axes=F)
  axis(1, at=c(1,nrow(df)/2,nrow(df)),labels=c("Thu","Fri","Sat"))
  axis(2,at=tics,labels=c(0:6))
  # Panel 2 *************************************
  tics <- c(0:246)
  x <- df$Voltage
  y <- df$Date
  plot(x,NULL,type="l",ylab="Voltage",xlab="Datetime",axes=F)
  axis(1, at=c(1,nrow(df)/2,nrow(df)),labels=c("Thu","Fri","Sat"))
  axis(2,at=tics,labels=c(0:246))
  # Panel 3 *************************************
  sq <- c(0:30)
  tics <- sq
  plot(df$Sub_metering_1,type="n",ylab="Energy sub metering",xlab = "",axes=F)
  points(df$Sub_metering_1,type="l",col="black",pch=19)
  points(df$Sub_metering_2,type="l",col="red",pch=19)
  points(df$Sub_metering_3,type="l",col="blue",pch=19)
  par(new=TRUE)
  legend("topright", col = c("black", "red", "blue"),
       lty= "solid", legend = c("Sub_metering_1", "Sub_metering_2",
                                "Sub_metering_3") )
  axis(1, at=c(1,nrow(df)/2,nrow(df)),labels=c("Thu","Fri","Sat"))
  axis(2,at=tics,labels=sq)
  # Panel 4 *************************************
  x <- df$Global_reactive_power
  y <- df$Date
  tics <- c(0,0.1,0.2,0.3,0.4,0.5)
  plot(x,NULL,type="l",ylab="Global Reactive Power",xlab="Datetime",axes=F)
  axis(1, at=c(1,nrow(df)/2,nrow(df)),labels=c("Thu","Fri","Sat"))
  axis(2,at=tics,labels=c(0,0.1,0.2,0.3,0.4,0.5))
  dev.off()
  par(old.par)
  return()  
}