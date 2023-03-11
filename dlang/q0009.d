 /*
 * Project Euler
 * Question 9
 * Special Pythagorean triplet
 * Link: https://projecteuler.net/problem=9
 *
 * Solution of the problem: 31_875_000
 *
 * Written in DMD64 D Compiler v2.102
 *
 * Copyright © 2023, menjaraz
 */

import std.stdio, std.datetime.stopwatch, std.range, std.algorithm;

int a, b, c;

void main() {
	StopWatch timer;
	
	timer.start();
	

    for (a = 1; a <= 1000; a++)
    {
        for (b = a + 1; b <= 1000; b++)
        {
            c = 1000 - a - b;

            if (a * a + b * b == c * c)
            {
                writeln(a * b * c);
                //
                return;
            }
        }
    }
	
	timer.stop();


	writefln("Elapsed time: %s milliseconds.", timer.peek.total!"msecs"());
}