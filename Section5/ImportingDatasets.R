# Method 1 : Select the File Manually

dataframe <- read.csv(file.choose())

dataframe

rm(dataframe)

# Method 2 : Set WD and Read Data

setwd("C:\\Users\\badri\\Desktop\\RProgramming\\Section5")

getwd()

dataframe <- read.csv("DemographicData.csv")

dataframe

rm(dataframe)