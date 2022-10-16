28 %% 10
27 / 1000000000
5000 * 50000
options(scipen = 999)
x <- c(5, 12, 11, 14, 22, 66)
x[3]
x[1:5]
x[c(2, 5, 6)]
ind<-c(2, 5, 6)
x[ind]
x[c(6, 1)]
x[-4]
x[-c(2, 5, 6)]
x[x > 15]
length(x)
min(x)
max(x)
head(x, 3)
tail(x, 2)
sum(x)
x > 10 
sum(x > 10) # sums all elements bigger than 10
which(x > 10)# which index for elements bigger than 10
diff(x) # subtracts every two adjacent elements
cumsum(x)# returns vector with sums for each index
x ^ 2 # powers every element of x 
exp(x)
sort(x)
x[order(x)]# same as sort
rm(x)
x
x <- c(1, 3, 5, 11, 15)
class(x)
x <- as.integer(c(1, 3, 5, 11, 15))
class(x)
y <- c("Y", "Y", "N")
class(y)
z <- c(TRUE, TRUE, FALSE)
class(z)
x <- vector("logical", length = 5)
x
y <- vector("numeric", length = 5)
y
x <- c(5, 5, 5, 7, 7, 7)
y <- c(2, 2, 1)
x + y
x <- c(5, 5, 5, 7, 7, 7)
y <- c(2, 2, 2, 1)
x + y

#sequence generating
rep(5, times = 8)
rep(c(1,2), times = 5)
rep(c(1,2), each = 5)
rep(c(1,2), length.out = 7)
rep(c("a", "b"),times = 5)
rep(c("a", "b"),each = 5)

5:12
10:1

seq(from = 1, to = 10,by = 2)
seq(from = 10, to = 1, by = -2)
seq(from = 0,to = 1, by = 0.2)
seq(from = 0,to = 1, length.out = 11)

#matrices
M <- rbind(c(5, 3, 5, 6), c(8, 3, 7, 4))
M
M[2, 3]
M[ , 3]
M[2, ]
M <- cbind(c(5, 3, 5, 6), c(8, 3, 7, 4))
M
t(M)
M[c(3, 1), ]
M[order (M[, 1]), ]

M <- matrix(c(1:12), nrow = 3, ncol = 4)
M 
M <- matrix(c(1:12), nrow = 3,ncol = 4, byrow = TRUE)
M

head(M, 2)
tail(M, 2)

sqrt(M)

rownames(M) <- c("a", "b", "c")
colnames(M) <- c("x1", "x2", "x3", "x4")
M

#Data frame
x <- c(5, 8, 11, 3, 2, 9, 4)
y <- c("Y", "Y", "N", "Y", "N", "N"," Y")
df <- data.frame(x, y) # columns from different types
df
str(df)# info for df
df$x # getting columns with $
df$y
df$x[4]
df[ , 1]
df[5, ]
df[ , "x"] # column with given name

df$z <- seq(from = 1, to = 14, by = 2)# adding column
str(df)
df
df[3, c("x", "z")]
df[c(5, 7), c(2, 3)]# which elements to display
df$x [df$z <= 5]# these from column x for which df$z <= 5
df$x [df$y == "N"]
df[df$z <= 5, c("x", "z")] # rows for which z <= 5 and columns x and z

sample(c(1:10), 2, replace = T)# random elements from vector, how many times, to return
sample(c(1:10), 2, replace = F)# unique selections

sample(c(1:6), 10, replace = T)# dice roll
dice <- sample(c(1:6), 100000, replace = T)
dice[1:20]
sum(dice == 6)# how many times number six is contained
sum(dice == 6) / length(dice)
1 / 6