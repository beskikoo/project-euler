 /*
 * Project Euler
 * Question 5
 * Smallest multiple
 * Link: https://projecteuler.net/problem=5
 *
 * Solution of the problem: 232_792_560
 *
 * Written in DMD64 D Compiler v2.102
 *
 * Copyright © 2023, menjaraz
 */

import std.stdio, std.range, std.algorithm;

// Check n for divisibility by 1..20
bool predicate(const int n) {
    return iota(1, 20+1).map!(a => n % a).sum != 0;
}

// Start as high as possible
auto i = 2520;

void main() {

    // increment i by 2520 for each iteration
    for (; predicate(i); i += 2520) {}

    auto answer = i;

    answer.writeln;
}