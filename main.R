


#request url and save response to variable titanic
install.packages("RJSONIO")
library(RJSONIO)
file<-RJSONIO::fromJSON("/data/config.json")
file[['parameters']][['url']]

#import necessary libraries
library(data.table)

#request url and save response to variable titanic
titanic<-fread (file)

# write output to table and print first 10 rows
write.csv(titanic, file = "/data/out/tables/titanic.csv", row.names = FALSE)
print(titanic[1:10,"Survived"])

