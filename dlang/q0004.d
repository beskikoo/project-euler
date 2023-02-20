/* Project Euler
 * Question 4
 * Largest palindrome product
 * Link: https://projecteuler.net/problem=4
 *
 * Solution 906_609
 *
 * Written in DMD64 D Compiler v2.102
 *
 * Copyright © 2023, menjaraz
 */

import std.stdio, std.datetime.stopwatch, std.range, std.algorithm;

int reverseNumber(int i) {
    int result = 0;

    while (i>0) 
    {
        result = (result * 10) + i%10;
        i /= 10;
    }

    return result;
}

bool isPalindrome(int i)  {
    return (i == reverseNumber(i))? true: false;
}

int previous3digitsPalindrome(int i) {
    return (i>100_001)?((i - i%100)/1_000-1)*1_000+reverseNumber((i - i%1000)/1_000-1):0;
}

// 997_799 <= 998_001 == 999*999
// 100_001 <= 100_000 == 100*100
//
// Downward Space search: 997_799..100_001

auto palindromesFrom3digitsProduct = recurrence!((a,n) => previous3digitsPalindrome(a[n-1]))(997_799);

// Take 1 and you get [997_799] ie by using `palindromesFrom3digitsProduct.take(1)` 
// Take 898 and get all 3 digit pallindromes namely [997_799..100_001] ie by using `palindromesFrom3digitsProduct.take(898)`
// 
// Iterating that range from its _first element_ till the _first_ palindrome  product of two 3-digit numbers give the solution...
// conversly searching the _greatest_ palindrome  product of two 3-digit numbers from the last element (100_001) till the first one (997_799)


void main() {
    
    StopWatch timer;
    
    timer.start();
    

    // n = 1000 is taken as arbitrary integer more than needed so any candidates below the lower bound palindrome (100_001) is filter out
    auto candidates = palindromesFrom3digitsProduct.take(1000).filter!(i => i !=0);
    
    assert(candidates.walkLength == 898, "There should be only 898 candidates 3 digit pallindromes all in all");

    int[] factors;
    
    outer: foreach(p; candidates) {
        
        // Finding factors
		
		factors = [];
        
        for(int j = 997; j >= 100; j--) {
            
            if (p % j^^2 == 0) {
                factors = [j, j];
                //
                if (p == j^^2) break outer;
            }
            
            if (p % j == 0) {
                factors ~= j;
                //
                for(int k = j-1; k >= 100; k--) {
                    if (p % k == 0) {
                        factors ~= k;
                        if (p == j*k) break outer;
                    }
                }
            }
        }
    }    
    
    timer.stop();
    
    assert(factors.length == 2, "There should be only 2 factors");
    
    (factors[0]*factors[1]).writeln;
    
    writeln;
    writefln("Elapsed time: %s milliseconds.", timer.peek.total!"msecs"());

}