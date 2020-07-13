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

m <- ggplot(data = movies , aes(x = CriticRating , y = AudienceRating , colour = Genre))

# Example 1 

m + geom_point()

m + geom_point() + xlim(50,100) + ylim(50,100)

# Example 2 -  Won't work always

n <- ggplot(data = movies , aes(x = BudgetMillions))

n + geom_histogram(binwidth = 10 , aes(fill = Genre) , colour = "Black") + ylim(0,50)

# Example 3 - Using Zoom will work always

n + geom_histogram(binwidth = 10 , aes(fill = Genre) , colour = "Black") + coord_cartesian(ylim = c(0,50))

# Example 4 - Improving this

w <- ggplot(data = movies , aes(x = CriticRating , y = AudienceRating , colour = Genre))

w + geom_point(aes(size = BudgetMillions)) + geom_smooth() + facet_grid(Genre~Year)

w + geom_point(aes(size = BudgetMillions)) + geom_smooth() + facet_grid(Genre~Year) + coord_cartesian(ylim = c(0,100))