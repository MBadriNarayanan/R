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


#### Aesthetics

# install.packages("ggplot2")

library(ggplot2)

ggplot(data = movies , aes(x = CriticRating , y = AudienceRating))
  
# Add Geometry

ggplot(data = movies , aes(x = CriticRating , y = AudienceRating)) + 
  
  geom_point()

# Add Colour

ggplot(data = movies , aes(x = CriticRating , y = AudienceRating , colour = Genre)) + 
  
  geom_point()


# Add Size

ggplot(data = movies , aes(x = CriticRating , y = AudienceRating , colour = Genre , size = Genre)) + 
  
  geom_point()


# Add Size - Better Way

ggplot(data = movies , aes(x = CriticRating , y = AudienceRating , colour = Genre , size = BudgetMillions)) + 
  
  geom_point()