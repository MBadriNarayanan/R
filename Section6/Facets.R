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

v <- ggplot(data = movies , aes(x = BudgetMillions))

v + geom_histogram(binwidth = 10 , aes(fill = Genre) , colour = "Black")

# Facets

v + geom_histogram(binwidth = 10 , aes(fill = Genre) , colour = "Black") + facet_grid(Genre~.)

v + geom_histogram(binwidth = 10 , aes(fill = Genre) , colour = "Black") + facet_grid(Genre~., scales = "free")

# Facets to Scatter Plots

w <- ggplot(data = movies , aes(x = CriticRating , y = AudienceRating , colour = Genre))

w + geom_point(size = 3)

w + geom_point(size = 3) + facet_grid(Genre~.)

w + geom_point(size = 3) + facet_grid(.~Year)

w + geom_point(size = 3) + facet_grid(Genre~Year)

w + geom_point(size = 3) + geom_smooth() + facet_grid(Genre~Year)

w + geom_point(size = 3) + geom_smooth() + facet_grid(Genre~Year)

w + geom_point(aes(size = BudgetMillions)) + geom_smooth() + facet_grid(Genre~Year)

