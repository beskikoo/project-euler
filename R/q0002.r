# Project Euler
# Question 2
# Even Fibonacci numbers
# Link: https://projecteuler.net/problem=2
#
# Solution of the problem: 4613732
#
# Using Programiz R Online Compiler here https://www.programiz.com/r/online-compiler
#
# © 2023, menjaraz


fibonacci <- c(1, 2)

while (max(fibonacci) < 4000000) {
    fibonacci <- c(fibonacci, fibonacci[length(fibonacci) - 1] + fibonacci[length(fibonacci)])
}

answer <- sum(fibonacci[fibonacci%%2 == 0])

print(answer)