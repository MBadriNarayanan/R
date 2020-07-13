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

u <- ggplot(data = movies , aes(x = CriticRating , y = AudienceRating , colour = Genre))

u + geom_point()

# Example 1 

u + geom_point() + geom_smooth()
 
# Example 2 

u + geom_point() + geom_smooth(fill = NA)

# Example 3 - Box Plots

u <- ggplot(data = movies , aes(x = Genre , y = AudienceRating , colour = Genre))

u + geom_boxplot()

u + geom_boxplot(size = 1.2)

u + geom_boxplot(size = 1.2) + geom_point()

u + geom_boxplot(size = 1.2) + geom_point() + geom_jitter()

u + geom_jitter() + geom_boxplot(size = 1.2)

u + geom_jitter() + geom_boxplot(size = 1.2 , alpha = 0.5)