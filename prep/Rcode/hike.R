# # connect to stdin to get data
# f <- file("stdin")
# on.exit(close(f))
# # read input
# input <- strsplit(readLines(f)," ")
# # create variables
# nSteps <- as.numeric(strsplit(input[[1]]," "))
# stepString <- as.numeric(strsplit(input[[2]]," "))

nSteps = 8
stepString = "UDDDUDUU"
path <- 0
valleyCount <- 0

for(i in 1:nSteps){
  # create path based on steps
  step <- substr(stepString,i,i)
  if(step == "U"){
    path <- c(path, path[i] + 1)
  }
  if(step == "D"){
    path <- c(path, path[i] - 1)
  }
  
  # check if new valley exists 
  if(sign(path[i]) >= 0 && sign(path[(i + 1)]) < 0 ){
    valleyCount = valleyCount + 1
  }
}

write(valleyCount,stdout())