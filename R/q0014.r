# Project Euler
# Question 14
# Longest Collatz sequence
# Link: https://projecteuler.net/problem=14
#
# Solution of the problem: 837799
#
# Using ideone.com R Online Compiler here https://ideone.com
# Need to use arbitrarily large integers (via GMP).
#
# © 2023, menjaraz

collatz <- function(n) {
	
	i <- 1

	while (n != 1) {
	    if (n%%2 == 0)
		    n <- n / 2
		else
		    n <- 3 * n + 1
		
		i <- i + 1
	}
	
	return(i)
}

maxlen <- 0

for (n in 1:1E6) {
	curlen <- collatz(n)
	
	if (curlen > maxlen) {
		maxlen <- curlen
		answer <- n
	}
		
}

print(answer)
