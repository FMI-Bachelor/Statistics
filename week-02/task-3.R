sim.questions <- function(k) {
	q <- c(rep(1, 3), rep(2, k - 3))
	x <- sample(q, 2, replace = FALSE)
	sum(x == 3)
}

sim.questions(20)

prob.questions <- function(Nrep, k) {
	rs <- replicate(Nrep, sim.questions(k))
	sum(rs) / length(rs)
}

prob.questions(100000, 20)