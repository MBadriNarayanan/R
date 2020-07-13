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


# Overriding Aesthetics

# install.packages("ggplot2")

library(ggplot2)

q <- ggplot(data = movies , aes(x = CriticRating , y = AudienceRating , colour = Genre , size = BudgetMillions))

q

# Example 1 - Add Geometry

p1 <- q + geom_point()

p1

# Example 2 - Overriding Aesthetics by Changing Size

p2 <- q + geom_point(aes(size = CriticRating))

p2

# Example 3  - Overriding Aesthetics by Changing Colour

p3 <- q + geom_point(aes(colour = BudgetMillions))

p3

# Example 4  - Overriding Aesthetics by Changing X 

p4 <- q + geom_point(aes(x = BudgetMillions)) +
  
  xlab("Budget In Millions")

p4

# Example 5 - Line on top of Point

p5 <- q + geom_line() + geom_point()

p5

# Example 6 - Reducing Line Size

p6 <- q + geom_line(size = 1) + geom_point()

p6

