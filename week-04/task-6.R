n <- 10
p <- 1/4

# P(X>=5) = 1 - P(X<=4)
1 - pbinom(4, n, p)