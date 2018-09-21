# meiro_R_test
#import necessary libraries

library(data.table)
#request url and save response to variable titanic
titanic<-fread("http://web.stanford.edu/class/archive/cs/cs109/cs109.1166/stuff/titanic.csv")
# write output to table and print first 10 rows
write.csv(titanic, file = "out/tables/titanic.csv", row.names = FALSE)
print(titanic[1:10,"Survived"])
