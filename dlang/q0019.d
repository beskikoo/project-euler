/* Project Euler 
 * Question 19
 * Counting Sundays
 * Link: https://projecteuler.net/problem=19
 * 
 * Solution: 171
 *
 * Written in DMD64 D Compiler v2.102
 *
 * © 2023, menjaraz
 */
	
import std.stdio, std.datetime.stopwatch, std.range, std.datetime;

void main() {
    
    StopWatch timer;
	
    timer.start();
	
    auto i = 0;

    foreach(year; iota(1901, 2000+1)) {
        foreach(month; iota(1, 12+1)) {
            if (Date(year, month, 1).dayOfWeek == DayOfWeek.sun) {
                i += 1;
            }
        }
    }
	
    timer.stop();

    i.writeln;
	
    writefln("Elapsed time: %s milliseconds.", timer.peek.total!"msecs"());
}
