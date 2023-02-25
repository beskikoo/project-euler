 /*
 * Project Euler
 * Question 31
 * Coin sums
 * Link: https://projecteuler.net/problem=31
 *
 * Solution: 73_682
 *
 * Written in DMD64 D Compiler v2.102
 *
 * © 2023, menjaraz
*/

import std.stdio, std.datetime.stopwatch, std.range;

void main() {
    
    StopWatch timer;
	
    timer.start();
	
    auto result = 0;
    auto remainder = 200;

    foreach(a; iota(0, remainder+1, 200)) {
        remainder = 200 - a;
        foreach(b; iota(0, remainder+1, 100)) {
            remainder = 200 - a - b;
            foreach(c; iota(0, remainder+1, 50)) {
                remainder = 200 - a - b - c;
                foreach(d; iota(0, remainder+1, 20)) {
                    remainder = 200 - a - b - c - d;
                    foreach(e; iota(0, remainder+1, 10)) {
                        remainder = 200 - a - b - c - d - e;
                        foreach(f; iota(0, remainder+1, 5)) {
                            remainder = 200 - a - b - c - d - e - f;
                            foreach(g; iota(0, remainder+1, 2)) {
                                // h = ;
                                if (200 - a - b - c - d - e - f - g >= 0) {
                                    result += 1;
                                }
                            }
                        }
                    }
                }

            }
        }
    }

    timer.stop();
	
    writeln(result);
	
    writefln("Elapsed time: %s milliseconds.", timer.peek.total!"msecs"());
}
