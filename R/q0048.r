# Project Euler
# Question 48
# Self powers
# Link: https://projecteuler.net/problem=48
#
# Solution of the problem: 9110846700
#
# Using ideone.com R Online Compiler here https://ideone.com
#
# © 2023, menjaraz

library(gmp)

self_power <- as.bigz(0)

for (i in 1:1000) {
    self_power <- self_power + (as.bigz(i)^as.bigz(i))
}

str <- as.character(self_power)

answer <- substr(str, nchar(str) - 9 , nchar(str))

print(answer)
