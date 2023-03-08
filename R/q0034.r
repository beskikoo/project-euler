# Project Euler
# Question 34
# Digit factorials
# Link: https://projecteuler.net/problem=34
#
# Solution of the problem: 40730
#
# Using R version 4.2.2
#
# © 2023, menjaraz


answer <- 0

for (n in 3:999999) {
    digs <- as.numeric(unlist(strsplit(as.character(n), "")))
    if (sum(factorial(digs)) == n) answer <- answer + n
}

print(answer)
