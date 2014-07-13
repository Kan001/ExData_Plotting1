plot1 <- function() {
  # First plot for Exploratory Data Anlaysis Project 1
  # To reproduce the plots download Electric power consumption data set in project
  # description and run the eda_p1 function below
  fn <- "/Users/JimBarker/R Source/ExploratoryDataAnalysis Class/hpc_subset.csv"
  df <- read.csv(fn,stringsAsFactors=FALSE,header=TRUE)
  fn <- "/Users/JimBarker/R_repo/ExploratoryDataAnalysis/asgn1/ExData_Plotting1/plot1.png"
  png(filename=fn,height=480,width=480)
  hist(df$Global_active_power,col="red",main="Global Active Power",ylab="Frequency",freq=TRUE,
       xlab="Global Active Power (kilowatts)",breaks=12,ylim=c(0,1200))
  dev.off()
  return("Plot1 creation complete")  
}
eda_p1 <- function() {
  # Create a subset of household power consumption dataset
  # This data set will be the input for the four plotting functions
  fp <- "/Users/JimBarker/R Source/ExploratoryDataAnalysis Class/"
  fn <- "household_power_consumption.txt"
  f_name <- paste(fp,fn,sep="")
  df <- read.table(f_name,sep=";",header=T,stringsAsFactors=FALSE)
  df$Date <- as.Date(strptime(df$Date, "%d/%m/%Y"))
  df <- subset(df,Date == "2007-02-01" | Date == "2007-02-02")
  write.csv(df,file="/Users/Public/hpc_subset.csv")
  return("Subset csv created")  
}