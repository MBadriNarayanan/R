# Load the Basketball data into the environment by running the BasketballData script 

# Transpose in R is the function t()

# Graph 1 


matplot(t(FieldGoals) , type = "b" , pch = 15 : 18 , col = c(1 : 4 , 6))

legend("bottomleft" , inset = 0.01 , legend = Players , col = c(1 : 4 , 6) , pch = 15 : 18 , horiz = F)


# Graph 2

matplot(t(FieldGoals / Games) , type = "b" , pch = 15 : 18 , col = c(1 : 4 , 6))

legend("bottomleft" , inset = 0.01 , legend = Players , col = c(1 : 4 , 6) , pch = 15 : 18 , horiz = F)


# Graph 3

matplot(t(FieldGoals / FieldGoalAttempts) , type = "b" , pch = 15 : 18 , col = c(1 : 4 , 6))

legend("bottomleft" , inset = 0.01 , legend = Players , col = c(1 : 4 , 6) , pch = 15 : 18 , horiz = F)


