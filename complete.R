complete <- function(folderName = "specdata", id = 1:332)
{
  fPath <- paste("./",folderName,"/", sep='')
  y <- list.files(path=fPath, full.names = TRUE, pattern = "\\.csv$")
 
  df1 <- data.frame(matrix(ncol = 2, nrow = 0))
  x <- c("ID", "nobs")
  colnames(df1) <- x 
  n <- 1
  
  for (i in id) {
    
    z <- read.csv(y[i], header = TRUE)
    zSum <- sum(complete.cases(z))
    df1[n, 1] <- i
    df1[n, 2] <- zSum
    n <- n+1
   
    }
return(df1)
}