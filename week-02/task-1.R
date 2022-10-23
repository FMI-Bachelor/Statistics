sim.gifts <- function(k) {
	x <- sample(c(1:k), k, replace = F)
	dfr <- x - c(1:k)
	any(dfr == 0)
}

prob.gifts <- function(Nrep, k) {
	rs <- replicate(Nrep, sim.gifts(k)) # number of iterations, what to use
	sum(rs) / length(rs)
}

prob.gifts(100000, 20)