corr <- function(folderName = "specdata", threshold = 0)
{
 
  allFiles <- complete()  
  
  
  idTh = allFiles[allFiles["nobs"] > threshold, ]$ID
  finCorr = numeric()
  for (i in idTh) {
    
    nR = read.csv(paste(folderName, "/", formatC(i, width = 3, flag = "0"), 
                             ".csv", sep = ""))
    nrdf = nR[complete.cases(nR), ]
    finCorr = c(finCorr, cor(nrdf$sulfate, nrdf$nitrate))
  }
  return(finCorr)
    }
