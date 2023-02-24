# Project Euler
# Question 1
# Multiples of 3 or 5
# Link: https://projecteuler.net/problem=1
#
# Solution of the problem: 233168
#
# Using Programiz R Online Compiler here https://www.programiz.com/r/online-compiler
#
# © 2023, menjaraz


print(sum((1:999)[(1:999)%%3 == 0 | (1:999)%%5 == 0]))