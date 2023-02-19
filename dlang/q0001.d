 /*
 * Project Euler
 * Question 1
 * Multiples of 3 or 5
 * Link: https://projecteuler.net/problem=1
 *
 * Solution of the problem: 233_168
 *
 * Written in DMD64 D Compiler v2.102
 *
 * © 2023, menjaraz
 */

import std.stdio, std.datetime.stopwatch, std.range, std.algorithm;

void main() {
	StopWatch timer;
	
	timer.start();
	
	auto multOf3or5 = iota(1_000)
	.filter!(i => (i%3 == 0 || i%5 == 0))
	.sum;

	timer.stop();

	multOf3or5.writeln;

	writefln("Elapsed time: %s milliseconds.", timer.peek.total!"msecs"());
}
