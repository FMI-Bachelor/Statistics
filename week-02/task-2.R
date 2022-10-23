sim.birthdays <- function(k) {
	x <- sample(c(1:365), 25, replace = T)
	anyDuplicated(x) > 0 # returns index of duplicated element
}

sim.birthdays(25)

prob.birthdays <- function(Nrep, k) {
	rs <- replicate(Nrep, sim.birthdays(k))
	sum(rs) / length(rs)
}

prob.birthdays(100000, 25)