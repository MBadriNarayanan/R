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

q <- ggplot(data = movies , aes(x = CriticRating , y = AudienceRating , colour = Genre , size = BudgetMillions))

q


# Example 1  - Overriding Aesthetics by Changing X 

p1 <- q + geom_point(aes(x = BudgetMillions)) +
  
  xlab("Budget In Millions")

p1


# Mapping Vs Setting

r <- ggplot(data = movies , aes(x = CriticRating , y = AudienceRating))

r

# Add Colour Using Mapping

r + geom_point(aes(colour = Genre))


# Add Colour Using Setting

r + geom_point(colour = "DarkGreen")


# Add Size using Mapping 

r + geom_point(aes(colour = BudgetMillions))


# Add Size Using Setting

r + geom_point(size = 5)