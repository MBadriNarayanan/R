options(width = 200)

setwd("C:\\Users\\badri\\Desktop\\RProgramming\\Section5")

getwd()

dataframe <- read.csv("DemographicData.csv")

head(dataframe)

filter <- dataframe$Internet.users < 2

filter

dataframe[dataframe$Internet.users < 2 , ]

dataframe[dataframe$Bith.rate > 40 & dataframe$Internet.users < 2 , ]

dataframe[dataframe$Income.Group == "High income" , ]

dataframe[dataframe$Country.Name == "Malta" , ]