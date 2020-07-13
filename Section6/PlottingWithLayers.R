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


#### Plotting With Layers

# install.packages("ggplot2")

library(ggplot2)

p <- ggplot(data = movies , aes(x = CriticRating , y = AudienceRating , colour = Genre , size = BudgetMillions))

p

# Add Geometry

p1 <- p + geom_point()

p1

# Add Lines

p2 <- p + geom_line()

p2

# Points on top of Line

p3 <- p2 + geom_point()

p3

# Lines on Top of Points

p4 <- p1 + geom_line()

p4

