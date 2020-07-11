options(width = 200)

setwd("C:\\Users\\badri\\Desktop\\RProgramming\\Section5")

getwd()

dataframe <- read.csv("DemographicData.csv")

# install.packages("ggplot2")

qplot(data = dataframe , x = Internet.users ,  y = Birth.rate)

qplot(data = dataframe , x = Internet.users ,  y = Birth.rate , size = I(4))

qplot(data = dataframe , x = Internet.users ,  y = Birth.rate , colour = I("red") , size = I(4))

qplot(data = dataframe , x = Internet.users ,  y = Birth.rate , colour = Income.Group)
