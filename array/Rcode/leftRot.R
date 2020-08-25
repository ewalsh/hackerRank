n=5
d=4
a = c(1,2,3,4,5)

leftRot <- function(n,d,a){
  aRot <- a[1:d]
  if(d < length(a)){
    leftPart <- a[(d+1):length(a)]
    aRot <- c(leftPart, aRot)
  }
  return(aRot)
}

leftRot(n,d,a)