options(width = 200)

getwd()

setwd("C:\\Users\\badri\\Desktop\\RProgramming\\Section6")

getwd()

movies <- read.csv("MovieRatingsDataset.csv")

head(movies)

colnames(movies) <- c("Film","Genre","CriticRating","AudienceRating","BudgetMillions","Year")

movies$Year <- factor(movies$Year)

summary(movies)

str(movies)

# install.packages("ggplot2")

library(ggplot2)

t <- ggplot(data = movies , aes(x = AudienceRating))

# Example 1 - Histogram Plot

t + geom_histogram(binwidth = 10 , fill = "White" , colour = "Blue")

# Example 2 - Another Way to Plot Example 1

t <- ggplot(data = movies)

t + geom_histogram(binwidth = 10 , aes(x = AudienceRating) , fill = "White" , colour = "Blue")

# Example 3 

t + geom_histogram(binwidth = 10 , aes(x = CriticRating) , fill = "White" , colour = "Blue")

# Example 4

t <- ggplot()