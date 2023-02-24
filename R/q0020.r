# Project Euler
# Question 20
# Factorial digit sum
# Link: https://projecteuler.net/problem=20
#
# Solution of the problem: 648
#
# Using ideone.com R Online Compiler here https://ideone.com
#
# © 2023, menjaraz

library(gmp)

digits <- factorialZ(100)
answer <- sum(as.numeric(unlist(strsplit(as.character(digits), ""))))

print(answer)