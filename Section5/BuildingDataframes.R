# Load the Country Region Vectors into the environment byt running the CountryRegionVectors script

option(width = 200)

# Method 1 

mydf <- data.frame(Countries_2012_Dataset , Codes_2012_Dataset , Regions_2012_Dataset)

head(mydf)

colnames(mydf) <- c("Country" , "Code" , "Region")

head(mydf)

rm(mydf)

# Method 2 

mydf <- data.frame(Countries = Countries_2012_Dataset , Codes = Codes_2012_Dataset , Region = Regions_2012_Dataset)

head(mydf)

tail(mydf)