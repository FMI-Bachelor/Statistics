sim.ants <- function() {
	a <- vector("numeric", 3)
	a[1] <- sample(c(1, 2), 1)
	a[2] <- sample(c(1, 3), 1)
	a[3] <- sample(c(2, 3), 1)
	all(c(1, 2, 3) %in% a)
}

prob.ants <- function(Nrep) {
	rs <- replicate(Nrep, sim.ants())
	sum(rs) / length(rs)
}

prob.ants(100000)