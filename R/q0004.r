# Project Euler
# Question 4
# Largest palindrome product
# Link: https://projecteuler.net/problem=4
#
# Solution of the problem: 906609
#
# Using Programiz R Online Compiler here https://www.programiz.com/r/online-compiler
#
# © 2023, menjaraz

ispalindrome <- function(n) {
    str <- as.character(n) 
    reverse <- paste(rev(unlist(strsplit(str, ""))), collapse = "")
    
    return (str == reverse)
}

largest <- 0;

for (factor1 in 999:99) {
    for (factor2 in factor1:99) {
        product <- factor1*factor2
        if (ispalindrome(product)) {
            if (largest < product)
                 largest <- product    
        }
    }
}

answer <- largest

print(answer)