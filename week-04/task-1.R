n <- 10
p <- 1/6

# P(X=2)
dbinom(2, n, p)

# P(X<=2)
pbinom(2, n, p)

# P(X>=2) = 1 - P(X<=1)
1 - pbinom(1, n, p)