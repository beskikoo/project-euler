# Project Euler
# Question 16
# Power digit sum
# Link: https://projecteuler.net/problem=16
#
# Solution of the problem: 1366
#
# Using ideone.com R Online Compiler here https://ideone.com
#
# © 2023, menjaraz

library(gmp)

digits <- as.bigz(2^1000)  # Define number
answer <- sum(as.numeric(unlist(strsplit(as.character(digits), ""))))

print(answer)