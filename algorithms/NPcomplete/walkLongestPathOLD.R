# connect to stdin to get data
f <- file("stdin")
on.exit(close(f))
# read input
input <- strsplit(readLines(f)," ")
# create data
dat <- as.numeric(strsplit(input[[1]]," "))
for(i in 2:length(input)){
  dat <- rbind(dat,
               as.numeric(strsplit(input[[i]]," ")))
}
# dat <- matrix(c(4,5,3,1,3,4,2,4,2,3,4,1),ncol=2,byrow=TRUE)
dat <- matrix(c(6,7,2,3,4,1,5,6,1,3,1,5,4,3,3,5),ncol=2,byrow=TRUE)

pathMat <- matrix(0,dat[1,],dat[1,])
for(i in 2:nrow(dat)){
  pathMat[dat[i,1],dat[i,2]] <- 1
  pathMat[dat[i,2],dat[i,1]] <- 1
}
colnames(pathMat) <- row.names(pathMat) <- as.character(1:nrow(pathMat))
diag(pathMat) <- 0

## run function -- rows connected to cols
# start at least connected cities
numConn <- numConnStore <- apply(pathMat,2,sum)
curMinTgt <- min(numConnStore,na.rm=TRUE)
node <- path <- grep(TRUE,numConn == curMinTgt)[1]
continue = TRUE
while(continue){
  if(class(pathMat) == "matrix"){
    ID <- colnames(pathMat[,-path])[grep(TRUE,pathMat[node,-path] == 1)]
    if(length(ID) == 0){
      continue = FALSE
    }
    if(length(ID) > 1){
      ID <- colnames(pathMat[,ID])[grep(TRUE, apply(pathMat[,ID],2,sum) == min(apply(pathMat[,ID],2,sum)))[1]]
    }
    node <- as.numeric(ID)
    cityLeft <- colnames(pathMat[,-path])
    cityLeft <- cityLeft[-grep(TRUE,cityLeft == ID)]
    path <- c(path,node)

  }
  if(length(path) == (ncol(pathMat)-1)){
    path <- c(path,as.numeric(cityLeft))
    continue = FALSE
  }

}



output <- c(as.character(length(path)),
            paste(as.character(path),sep=" ",
                  collapse=" ")
)

write(output,stdout())
