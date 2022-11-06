r <- 10
p <- 0.1

# P(X>=50) = 1 - P(X<=49)
1 - pnbinom(49-r, r, p)