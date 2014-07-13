plot3 <- function() {
  fn <- "/Users/JimBarker/R Source/ExploratoryDataAnalysis Class/hpc_subset.csv"
  df <- read.csv(fn,stringsAsFactors=FALSE,header=TRUE)
  txt <- c("Thu","Fri","Sat")
  sq <- c(0:30)
  tics <- sq
  fn <- "/Users/JimBarker/R_repo/ExploratoryDataAnalysis/asgn1/ExData_Plotting1/plot3.png"
  png(filename=fn,height=480,width=480)
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
  dev.off()
  return("Plot3 creation complete")  
}