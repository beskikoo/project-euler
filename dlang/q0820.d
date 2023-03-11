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

import std.stdio, std.datetime.stopwatch, std.math;

long sumdecimaldigit(uint n) {
	long sum;

	sum = 0;
	
	for( uint i = 1; i < n; i++ ) {
		sum += powmod(10U, n-1, i) * 10U / i;
	}

	return sum;
}

void main()
{
	StopWatch timer;	
	timer.start();
	
	writeln(sumdecimaldigit(10_000_000));
	
	timer.stop();
	writefln("Elapsed time: %s milliseconds.", timer.peek.total!"msecs"());
}
