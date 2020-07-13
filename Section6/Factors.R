options(width = 200)

getwd()

setwd("C:\\Users\\badri\\Desktop\\RProgramming\\Section6")

getwd()

movies <- read.csv("MovieRatingsDataset.csv")

head(movies)

colnames(movies) <- c("Film","Genre","CriticRating","AudienceRating","BudgetMillions","Year")

head(movies)

tail(movies)

str(movies)

summary(movies)

movies$Year <- factor(movies$Year)

summary(movies)

str(movies)