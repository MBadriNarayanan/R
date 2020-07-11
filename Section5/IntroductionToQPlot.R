options(width = 200)

setwd("C:\\Users\\badri\\Desktop\\RProgramming\\Section5")

getwd()

dataframe <- read.csv("DemographicData.csv")

# install.packages("ggplot2")

qplot(data = dataframe , x = Internet.users)

qplot(data = dataframe , x = Income.Group , y = Birth.rate)

qplot(data = dataframe , x = Income.Group , y = Birth.rate , size = I(3))

qplot(data = dataframe , x = Income.Group , y = Birth.rate , size = I(3) , colour = I("blue"))

qplot(data = dataframe , x = Income.Group , y = Birth.rate , size = I(3) , colour = I("blue") , geom = "boxplot")