myFunction < - function(folderName = "specdata", col = "nitrate", id = 1: 332) {
    fPath < -paste("~/", folderName, "/", sep = '')
    y < -list.files(path = fPath, full.names = TRUE, pattern = "\\.csv$")

    for (i in id) {

        z < -read.csv(y[i], header = TRUE)
        if (i == id[1]) {
            combined < -z
        } else {
            combined < -rbind(combined, z)
        }
    }
    meanV < -mean(combined[[col]], na.rm = T)
    print(meanV)
}
