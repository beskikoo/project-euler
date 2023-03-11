 /*
 * Project Euler
 * Question 820
 * Nth digit of Reciprocals
 * Link: https://projecteuler.net/problem=820
 *
 * Solution: 44_967_734 
 *
 * Written in DMD64 D Compiler v2.102
 *
 * © 2023, menjaraz
*/

import std.stdio, std.math;

long sumdecimaldigit(uint n) {
	long sum;

	for( uint i = 1; i < n; i++ ) {
		sum += powmod(10U, n-1, i) * 10U / i;
	}

	return sum;
}

void main()
{
	writeln(sumdecimaldigit(10_000_000));
}
