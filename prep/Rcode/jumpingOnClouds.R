clouds = c(0,1,0,0,0,1,0)

cJump <- function(clouds){
  pos <- 1
  jumps <- 0
  goal = length(clouds)
  while(pos < goal){
    if(clouds[pos + 2] == 1){
      jumps = jumps + 1
      pos <- pos + 1
    }
    if(clouds[pos + 2] == 0){
      jumps = jumps + 1
      pos <- pos + 2
    }
  }
  
  return(jumps)
  
}

cJump(clouds)