# connect to stdin to get data
f <- file("stdin")
on.exit(close(f))
# read input
input <- strsplit(readLines(f)," ")
# create variables
n <- as.numeric(strsplit(input[[1]]," "))
ar <- as.numeric(strsplit(input[[2]]," "))

# run function
store <- ar
count <- 0

while(length(store) > 0){
  s1 <- store[1]
  match <- grep(TRUE,s1 == store[-1]) + 1
  if(sum(match) > 0){
    count <- count + 1
    store <- store[c(-1,-match[1])]
  }
  if(sum(match) == 0){
    store <- store[-1]
  }
}

write(count,stdout())