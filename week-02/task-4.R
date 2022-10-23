sim.keys <- function(k) {
	x <- sample(c(1:k), k, replace = FALSE)
	x[5] == 1
}

sim.keys(5)

prob.keys <- function(Nrep, k) {
	rs <- replicate(Nrep, sim.keys(k))
	sum(rs) / length(rs)
}

prob.keys(100000, 5)