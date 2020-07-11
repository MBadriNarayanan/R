# Load the Country Region Vectors into the environment byt running the CountryRegionVectors script

option(width = 200)

options(width = 200)

setwd("C:\\Users\\badri\\Desktop\\RProgramming\\Section5")

getwd()

dataframe <- read.csv("DemographicData.csv")

head(dataframe)

tail(dataframe)


mydf <- data.frame(Countries = Countries_2012_Dataset , Codes = Codes_2012_Dataset , Region = Regions_2012_Dataset)

head(mydf)

tail(mydf)

merged <- merge(dataframe , mydf , by.x = "Country.Code" , by.y = "Codes")

head(merged)

merged$Countries <- NULL

str(merged)

head(merged)

tail(merged)