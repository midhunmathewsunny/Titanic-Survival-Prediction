
# Function to read data

readdata <- function(path, filename, coltypes, missingtypes){
  read.csv(url(paste(path,filename,sep = "")),colClasses = coltypes,na.strings = missingtypes)
}