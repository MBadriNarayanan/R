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

o <- ggplot(data = movies , aes(x = BudgetMillions))

h <- o + geom_histogram(binwidth = 10 , aes(fill = Genre) , colour = "Black")

h

# Axes Labels

h + xlab(" Money Axis ") + ylab(" Number of Movies ")

# Label Formatting

h + xlab(" Money Axis ") + ylab(" Number of Movies ") + theme(axis.title.x = element_text(colour = "DarkGreen" , size = 30) , axis.title.y = element_text(colour = "Red" , size = 30))

# Tick Mark Formatting

h + xlab(" Money Axis ") + ylab(" Number of Movies ") + theme(axis.title.x = element_text(colour = "DarkGreen" , size = 30) , axis.title.y = element_text(colour = "Red" , size = 30) , axis.text.x = element_text(size = 20) , axis.text.y = element_text(size = 20))

# Legend Formatting

h + xlab(" Money Axis ") + ylab(" Number of Movies ") + theme(axis.title.x = element_text(colour = "DarkGreen" , size = 30) , axis.title.y = element_text(colour = "Red" , size = 30) , axis.text.x = element_text(size = 20) , axis.text.y = element_text(size = 20) , legend.title = element_text(size = 30) , legend.text = element_text(size = 20) , legend.position = c(1,1) , legend.justification = c(1,1))

# Title 

h + ggtitle(" Movie Budget Distribution ") + xlab(" Money Axis ") + ylab(" Number of Movies ") + theme(axis.title.x = element_text(colour = "DarkGreen" , size = 30) , axis.title.y = element_text(colour = "Red" , size = 30) , axis.text.x = element_text(size = 20) , axis.text.y = element_text(size = 20) , legend.title = element_text(size = 30) , legend.text = element_text(size = 20) , legend.position = c(1,1) , legend.justification = c(1,1) , plot.title = element_text(colour = "DarkBlue" , size = 40 , family = "Courier"))