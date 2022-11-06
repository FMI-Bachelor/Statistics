sim.socks <- function() {
	x <- sample( c(1,1,2,2,3,3), 2, replace=F )
	x[1]==x[2]
}

prob.socks <- function(Nrep) {
	rs <- replicate( Nrep, sim.socks() )
	sum(rs)/length(rs)
}

prob.socks(100000)