#!/usr/bin/Rscript

writeLines(commandArgs()[1])
# connect to stdin to get data
# f <- file("stdin")
# on.exit(close(f))
# read input
#input <- strsplit(readLines(f)," ")
#output <- cat(input,"__tested")
#writeLines(input)
# print(output)