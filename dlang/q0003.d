 /*
 * Project Euler
 * Question 3
 * Largest prime factor
 * Link: https://projecteuler.net/problem=3
 *
 * Solution of the problem: 6_857
 *
 * Written in DMD64 D Compiler v2.102
 *
 * Copyright © 2023, menjaraz
*/

import std.stdio, std.math, std.datetime.stopwatch;

T largestPrimeFactor(T)(in T n) pure nothrow {
	T limit = n / 2;
	T retval = n;
	
	for (T i = 3; i < limit; i += 2) {
		for (T k = retval; k % i == 0; retval = k) {
			k = k / i;
			limit = k / 2;
		}
	}
	
	return retval;
}

void main()
{
	StopWatch timer;
	
	timer.start();
	
	auto answer = 600_851_475_143.largestPrimeFactor;
	
	timer.stop();
	
	answer.writeln;
	
	writefln("Elapsed time: %s milliseconds.", timer.peek.total!"msecs"());
}
