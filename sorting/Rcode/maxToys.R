n = 7
k = 50
prices = c(1,12,5,111,200,1000,10)

maxToys <- function(k,prices){
  out <- 0
  id <- grep(TRUE, prices <= k)
  basket <- 0
  if(length(id) > 0){
    prices <- prices[id]
    foundMax <- FALSE

    if(sum(prices) <= k){
      basket <- c(basket,prices)
      foundMax <- TRUE
    }

    if(sum(prices) > k){
      # sort prices
      prices[rank(prices,ties.method="first")] <- prices
      # add to basket until limit
      i <- 1
      while(!foundMax){
        basket <- c(basket,prices[i])
        if(sum(basket) > k){
          basket <- basket[-length(basket)]
          foundMax <- TRUE
        }
        if(sum(basket) == k){
          foundMax <- TRUE
        }
        i <- i + 1
      }
    }

  }

  return(length(basket)-1)

}

maxToys(k, prices)





# out <- 0
# id <- grep(TRUE,prices <= k)
# if(length(id) > 0){
#   prices <- prices[id]
#   foundMax <- FALSE
#
#   if(sum(prices) <= k){
#     out <- length(prices)
#     foundMax <- TRUE
#   }
#   i <- length(prices) - 1
#   while(!foundMax){
#     test <- combn(prices,i)
#     test <- apply(test,2,sum)
#     if(length(grep(TRUE,test <= k)) > 0){
#       foundMax <- TRUE
#       out <- i
#     }
#     i <- i - 1
#     if(i == 0){
#       foundMax <- TRUE
#       out <- i
#     }
#   }
# }
# return(out)
