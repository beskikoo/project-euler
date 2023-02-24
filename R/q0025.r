# Project Euler
# Question 25
# 1000-digit Fibonacci number
# Link: https://projecteuler.net/problem=25
#
# Solution of the problem: 4782
#
# Using ideone.com R Online Compiler here https://ideone.com
#
# © 2023, menjaraz

library(gmp)

a <- 1
b <- 1

index <- 2

while (nchar(as.character(b)) < 1000)  {
    c <- as.bigz(a + b)
	
    a <- b
    b <- c
	
	index <- index + 1
}

print(index)