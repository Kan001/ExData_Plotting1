plot2 <- function() {
  fn <- "/Users/JimBarker/R Source/ExploratoryDataAnalysis Class/hpc_subset.csv"
  df <- read.csv(fn,stringsAsFactors=FALSE,header=TRUE)
  txt <- c("Thu","Fri","Sat")
  tics <- c(0:6)
  fn <- "/Users/JimBarker/R_repo/ExploratoryDataAnalysis/asgn1/ExData_Plotting1/plot2.png"
  x <- df$Global_active_power
  y <- df$Date
  png(filename=fn,height=480,width=480)
  plot(x,NULL,type="l",ylab="Global Active Power (kilowatts)",xlab="",axes=F)
  axis(1, at=c(1,nrow(df)/2,nrow(df)),labels=c("Thu","Fri","Sat"))
  axis(2,at=tics,labels=c(0:6))
  dev.off()
  return("Plot2 creation complete")  
}
