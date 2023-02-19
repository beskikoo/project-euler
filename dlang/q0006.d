 /*
 * Project Euler
 * Question 6
 * Sum Square difference
 * Link: https://projecteuler.net/problem=6
 *
 * Solution of the problem: 25_164_150
 *
 * Written in DMD64 D Compiler v2.102
 *
 * © 2023, menjaraz
*/

import std.stdio, std.datetime.stopwatch, std.range, std.algorithm;

void main() {
	StopWatch timer;
	
	timer.start();
	
	int sumSquareDiff(int n) {
        	return (iota(1, n+1).sum ^^ 2) - (iota(1, n+1).map!(a => a ^^ 2).sum);
    	}
	
	timer.stop();
	
	writeln(sumSquareDiff(100));
	
	writefln("Elapsed time: %s milliseconds.", timer.peek.total!"msecs"());
}
