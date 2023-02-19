 /*
 * Project Euler
 * Question 13
 * Large sum
 * Link: https://projecteuler.net/problem=13
 *
 * Solution: 5_537_376_230
 *
 * Written in DMD64 D Compiler v2.102
 *
 * © 2023, menjaraz
*/

import std.stdio, std.datetime.stopwatch, std.range, std.bigint, std.format;

string largeSum(string[] arr) {
    BigInt sum = BigInt(0);
    
    foreach(line; arr) {
        sum += BigInt(line);
    }

    return format("%s", sum);
}

void main() {
	
	StopWatch timer;
	
	timer.start();
	
	// numbers.txt is the file containing the numbers
	auto arr = import ("numbers.txt").split;
	
	auto answer = largeSum(arr)[0..10];
	
	timer.stop();
	
	writefln("First ten digits of the Large sum: %s", answer);
	
	writefln("Elapsed time: %s milliseconds.", timer.peek.total!"msecs"());

}
