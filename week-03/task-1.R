sim.balls <- function() {
	x <- sample( c(1:5), 2, replace=T )
	x[1]==x[2]
}

prob.balls <- function(Nrep) {
	rs <- replicate( Nrep, sim.balls() )
	sum(rs)/length(rs)
}  

prob.balls(100000)