# Project Euler
# Question 5
# Sum Square difference
# Link: https://projecteuler.net/problem=5
#
# Solution of the problem: 232792560
#
# Using Programiz R Online Compiler here https://www.programiz.com/r/online-compiler
#
# © 2023, menjaraz

# Start as high as possible
i <- 2520

# Check consecutive numbers for divisibility by 1:20
while (sum(i%%(1:20)) != 0) {
    i <- i + 2520
}
answer <- i

print(answer)