library(dplyr)
#for computing mean and piping operator usage

# titanic:
# Survived
# Pclass
# Name
# Sex
# Age
# Siblongs.Spouses.Aboad
# Parents.Children.Aboard
# Fare

#read table
titanic_in<-read.csv("/data/in/files/titanic.csv",stringsAsFactors = FALSE)

#compute mean of ages and fares of all passengers and store it in data frame
mean_all<-data.frame(titanic_in%>%summarise(mean_age=mean(Age),mean_fare=mean(Fare)))

#filter table for only male passengers who survived
data_selected_male<-subset(titanic_in,Sex=='male'& Survived==1)

#compute mean of ages and fares of those male and survived and store it in data frame
mean_male_survived<-data.frame(data_selected_male%>%summarise(mean_age=mean(Age),mean_fare=mean(Fare)))

# write output means to tables
write.csv(mean_all, file = "/data/out/tables/mean_all.csv", row.names = FALSE)
write.csv(mean_male_survived, file = "/data/out/tables/mean_male_survived.csv", row.names = FALSE)

