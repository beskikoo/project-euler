# Project Euler
# Question 7
# 10001st prime
# Link: https://projecteuler.net/problem=7
#
# Solution of the problem: 104743
#
# Using R version 4.2.2
#
# © 2023, menjaraz


is_prime <- function(n) {
  if (n <= 1) {
    return(FALSE)
  } else if (n <= 3) {
    return(TRUE)
  } else if (n %% 2 == 0 || n %% 3 == 0) {
    return(FALSE)
  }

  i <- 5
  while (i * i <= n) {
    if (n %% i == 0 || n %% (i + 2) == 0) {
      return(FALSE)
    }
    i <- i + 6
  }

  return(TRUE)
}

nth_prime <- function(n) {
  count <- 0
  num <- 1

  while (count < n) {
    num <- num + 1
    if (is_prime(num)) {
      count <- count + 1
    }
  }

  return(num)
}

print(nth_prime(10001))
