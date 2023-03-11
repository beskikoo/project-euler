/* Project Euler
 * Question 33
 * Digit cancelling fractions
 * Link: https://projecteuler.net/problem=33
 *
 * Solution 100
 *
 * Written in DMD64 D Compiler v2.102
 *
 * Copyright © 2023, menjaraz
 */

import std.stdio, std.datetime.stopwatch, std.numeric;

int productnum = 1, productdenu = 1;

void main()
{
	StopWatch timer;	
	timer.start();

	for (int x = 1; x < 9+1; x++)
		for (int y = 1; y < 9+1; y++) 
			if (x < y) {
				for (int a = 1; a < 9+1; a++) {
					if ((10 * x + a) * y == (10 * a + y) * x)  {
						productnum  *= x;
						productdenu *= y;
					}
				}
			}
	
	writeln(productdenu / gcd(productnum, productdenu));

	timer.stop();
	writefln("Elapsed time: %s milliseconds.", timer.peek.total!"msecs"());
}
