

bubbleSort <- function(a){
  swapCount <- 0
  for(i in 1:length(a)){
    for(j in 1:(length(a)-1)){
      if(a[j] > a[(j+1)]){
        tmp1 <- a[j]
        tmp2 <- a[(j+1)]
        a[j] <- tmp2
        a[(j+1)] <- tmp1
        swapCount <- swapCount + 1
      }
    }
  }
  ans <- list(paste('Array is sorted in',swapCount,"swaps."),
              paste('First Element:',a[1]),
              paste('Last Element:',a[length(a)]))
  
  return(ans)
}

a <- c(1,2,3)
bubbleSort(a)

a <- c(3,2,1)
bubbleSort(a)