#Naming Vectors

A <- 1 : 5

A

#give names

names(A) <- c("a","b","c","d","e")

A

A["d"]

names(A)

# clear names

names(A) <- NULL

A


#Naming Matrices

B <- rep(c("a","B","cc"), each = 3)

B

C <- matrix(B,3,3)

C


rownames(C) <- c("A","B","C")

colnames(C) <- c("X","Y","Z")

C["B","Y"] == C[2,2]

C["B","Y"] <- "K"

C

C[2,2] <- "E"

C