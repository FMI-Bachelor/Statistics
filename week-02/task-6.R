sim.black_white_cards <- function() {
	card <- sample(c("ww", "bw", "bb"), 1)
	side <- sample(c(1, 2), 1)
	up <- substr(card, start = side, stop = side)
	c(up, card)
}

sim.black_white_cards()

prob.black_white_cards <- function(Nrep) {
	rs <- replicate(Nrep, sim.black_white_cards())
	sum(rs[2,] == "ww") / length(rs[1,] == "w")
}

prob.black_white_cards(100000)