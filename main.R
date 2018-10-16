


#request url and save response to variable titanic
install.packages("RJSONIO")
library(RJSONIO)
file<-RJSONIO::fromJSON("/data/config.json")
file[['parameters']][['url']]

#import necessary libraries
library(data.table)

#request url and save response to variable titanic
titanic<-download.file([file, destfile = "/data/out/tables/titanic.csv", row.names = FALSE)
print(titanic[1:10,"Survived"])



