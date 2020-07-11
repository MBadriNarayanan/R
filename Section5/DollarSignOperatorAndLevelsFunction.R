options(width = 150)

setwd("C:\\Users\\badri\\Desktop\\RProgramming\\Section5")

getwd()

dataframe <- read.csv("DemographicData.csv")

dataframe

head(dataframe)

dataframe[3,3]

dataframe[3,"Birth.rate"]

dataframe$Internet.users

dataframe$Internet.users[2]

levels(dataframe$Income.Group)