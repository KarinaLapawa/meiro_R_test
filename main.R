install.packages("RJSONIO")
library(RJSONIO) 
file <- RJSONIO::fromJSON("/data/config.json")
file [['parameters']][['Username']]
