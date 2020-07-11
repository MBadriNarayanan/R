options(width = 200)

setwd("C:\\Users\\badri\\Desktop\\RProgramming\\Section5")

getwd()

dataframe <- read.csv("DemographicData.csv")

dataframe

# Subsetting 

dataframe[1 : 10 , ]

dataframe[3 : 9 , ]

dataframe[c(4,16) , ]


# Checking if the object is a dataframe

is.data.frame(dataframe[1,]) # TRUE

is.data.frame(dataframe[,1]) # FALSE

is.data.frame(dataframe[,1 , drop = F]) # TRUE


# Multiply Columns

head(dataframe)

dataframe$Birth.rate * dataframe$Internet.users

dataframe$Birth.rate + dataframe$Internet.users


# Add a column

head(dataframe)

dataframe$MyCalc <- dataframe$Birth.rate * dataframe$Internet.users


head(dataframe)


dataframe$XYZ <- 1 : 5

head(dataframe , n = 12)


# Removing a Column

head(dataframe)

dataframe$MyCalc <- NULL

dataframe$XYZ <- NULL

head(dataframe)