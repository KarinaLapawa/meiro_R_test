#import pandas library
import pandas as pd

#read data from file and keep it in data variable
data = pd.read_csv('/data/in/tables/titanic.csv')

#filter rows with male and female passengers, keep data in variables
data_male = data[data['Sex']=='male']
data_female = data[data['Sex']!='male']

#reset indexes to each dataset so it starts from 0 and grows incrementally    
data_male.reset_index(drop=True, inplace=True)
data_female.reset_index(drop=True, inplace=True)
 
#write data to output files
data_female.to_csv('/data/out/tables/titanic_filter_female.csv')
data_male.to_csv('/data/out/tables/titanic_filter_male.csv')
