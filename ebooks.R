# generate silly band descriptions
library(horse)

# load the glasto data
rr <- readLines("desc.txt")

# make the transition matrix
hh <- make_horse(rr)

# generate 100 descriptions
for(i in 1:100) cat("* ", neigh(hh),"\n\n")


