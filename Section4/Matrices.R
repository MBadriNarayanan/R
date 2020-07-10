# Method 1 using matrix() not used often

data <- 1 : 20

A <- matrix(data,4,5)

A

A[2,3]

B <- matrix(data,4,5,byrow = T)

B

B[2,3]

# Method 2 using rbind()

r1 <- c("My" , "name" , "is" , "M Badri" , "Narayanan")

r2 <- c("I" , "am" , "19" , "years" , "old")

r3 <- c(1.5,2.5,3.5,4.5,5.5)

r4 <- c(1L,2L,3L,4L,5L)

C <- rbind(r1,r2,r3,r4)

C


# Method 3 using cbind()



r1 <- c("My" , "name" , "is" , "M Badri" , "Narayanan")

r2 <- c("I" , "am" , "19" , "years" , "old")

r3 <- c(1.5,2.5,3.5,4.5,5.5)

r4 <- c(1L,2L,3L,4L,5L)

D <- cbind(r1,r2,r3,r4)

D

