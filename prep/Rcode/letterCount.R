s = 'aba'
n = 10

letterCount <- function(s, n){
  fullString <- paste(rep(s, ceiling(10 / nchar(s))),collapse = "")
  fullString <- strsplit(fullString,'')[[1]]
  fullString <- fullString[1:n]
  ans <- length(grep(TRUE,sapply(fullString,function(X){X == 'a'})))
  return(ans)
}