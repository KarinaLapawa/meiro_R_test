install.packages("RJSONIO")
library(RJSONIO) 

vjs <- RJSONIO::fromJSON("path_to_parameters.json")
vjs['bla']
