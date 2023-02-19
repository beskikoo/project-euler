 /*
 * Project Euler
 * Question 2
 * Even Fibonacci numbers
 * Link: https://projecteuler.net/problem=2
 *
 * Solution of the problem: 4_613_732
 *
 * Written in DMD64 D Compiler v2.102
 *
 * Copyright © 2023, menjaraz
*/

import std.stdio, std.datetime.stopwatch, std.range, std.algorithm;

void main() {
	
	// Knowing that...
	// fib(34) is 5_702_887 and more than 4_000_000, too large!
	// fib(33) is 3_524_578 and its predecessor fib(32) is 2_178_309
	// ... all fibonacci numbers down from fib(33) should be processed
	
	StopWatch timer;
	
	timer.start();
	
	int[2] fibArrHiBound = [3_524_578, 2_178_309];
	int[] evenFibArr =[3_524_578];

	while (fibArrHiBound[0] - fibArrHiBound[1] != 0) {
		int candidateFib = fibArrHiBound[0] - fibArrHiBound[1];

		if (candidateFib%2 == 0) {
			evenFibArr ~= candidateFib;
		}

		fibArrHiBound[0] = fibArrHiBound[1];
		fibArrHiBound[1] = candidateFib;
	}
	
	auto evenFibSum = evenFibArr.sum;
	
	timer.stop();
	
	evenFibSum.writeln;
	
	writefln("Elapsed time: %s milliseconds.", timer.peek.total!"msecs"());
	
}