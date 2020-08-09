# Load the Country Region Vectors into the environment byt running the CountryRegionVectors script

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

qplot(data = merged , x = Internet.users , y = Birth.rate)

qplot(data = merged , x = Internet.users , y = Birth.rate , colour = Region)

# Changing Marker Shape

qplot(data = merged , x = Internet.users , y = Birth.rate , colour = Region , size = I(5) , shape = I(2))

qplot(data = merged , x = Internet.users , y = Birth.rate , colour = Region , size = I(5) , shape = I(23))


# Transparency

qplot(data = merged , x = Internet.users , y = Birth.rate , colour = Region , size = I(5) , shape = I(2) , alpha = I(0.6))


# Adding Title

qplot(data = merged , x = Internet.users , y = Birth.rate , colour = Region , size = I(5) , shape = I(2) , alpha = I(0.6) , main = "Internet User vs Birth Rate")

