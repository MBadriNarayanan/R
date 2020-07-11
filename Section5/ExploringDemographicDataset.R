options(width = 150)

setwd("C:\\Users\\badri\\Desktop\\RProgramming\\Section5")

getwd()

dataframe <- read.csv("DemographicData.csv")

dataframe

nrow(dataframe)

ncol(dataframe)

head(dataframe , n = 10)

tail(dataframe)

str(dataframe)

summary(dataframe)
