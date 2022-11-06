n <- 1500
p <- 1/500

# P(X<=2)
pbinom(2, n, p)
ppois(2, n*p)
