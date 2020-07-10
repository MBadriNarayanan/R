x <- c("a","b","c","d","e")

x

x[c(1,5)]

x[1]

# Load the Basketball data into the environment by running the BasketballData script 

Games

Games[1 : 3, 6 : 10]

Games[c(1,10) , ]

Games[, c("2008" , "2009")]

Games[1,]

is.matrix(Games[1,])

is.vector(Games[1,])

# Subsetting 

Games[1 , , drop = F]

Games[1,5,drop = F]