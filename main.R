install.packages("RJSONIO")
library(RJSONIO) 
vjs <- RJSONIO::fromJSON("data/config.json")
vjs[['parameters']][['bla']]
