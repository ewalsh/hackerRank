ar <- matrix(0,nrow=6,ncol=6)
ar[1,] <- c(-9,-9,-9,1,1,1)
ar[2,] <- c(0,-9,0,4,3,2)
ar[3,] <- c(-9,-9,-9,1,2,3)
ar[4,] <- c(0,0,8,6,6,0)
ar[5,] <- c(0,0,0,-2,0,0)
ar[6,] <- c(0,0,1,2,4,0)

hourglass <- function(ar){
  riter <- 1:(ncol(ar)-2)
  citer <- 1:(nrow(ar)-2)
  hsums <- 0
  for(i in riter){
    for(j in citer){
      tmp <- as.numeric(ar[i:(i+2),j:(j+2)])
      tmp <- tmp[c(-2,-8)]
      hsums <- c(hsums,sum(tmp))
    }
  }
  return(max(hsums))
}

hourglass(ar)
