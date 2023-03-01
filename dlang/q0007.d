 /*
 * Project Euler
 * Question 7
 * 10001st prime
 * Link: https://projecteuler.net/problem=7
 *
 * Solution: 73_682
 *
 * Written in DMD64 D Compiler v2.102
 *
 * © 2023, menjaraz
*/

import std.stdio, primes_4m;

// I used the DUB Package d_primes that can be found here https://code.dlang.org/packages/d_primes ;-)
// It contains the first 2^24 primes numbers in a `immutable uint[]`!!!

void main()
{
	// Go and get it from the array. Zero-based array indexing applies
	writeln(primes[10_001-1]);
}
