install.packages("RJSONIO")
library(RJSONIO) 
vjs <- RJSONIO::fromJSON("/data/config.json")
print(vjs['bla'])
