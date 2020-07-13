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

s <- ggplot(data = movies , aes(x = BudgetMillions))


# Example 1 - Plotting Histogram

s + geom_histogram(binwidth = 10)

# Example 2 - Add Colour Using Mapping

s + geom_histogram(binwidth = 10 , aes(fill = Genre))

# Example 3 -  Add Border Using Setting

s + geom_histogram(binwidth = 10 , aes(fill = Genre) , colour = "Black")

# Example 4 - Density Plot

s + geom_density(aes(fill = Genre) , position = "stack")