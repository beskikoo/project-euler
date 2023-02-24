/*
 * Project Euler
 * Question 48
 * Self powers
 * Link: https://projecteuler.net/problem=48
 *
 * Solution of the problem: 9_110_846_700
 *
 * Written in DMD64 D Compiler v2.102
 *
 * Copyright © 2023, menjaraz
 */

import std.stdio, std.datetime.stopwatch, std.range, std.bigint, std.algorithm;

BigInt pow(in BigInt x, in BigInt y) pure {
    if (y == BigInt(0))
        return BigInt(1);
    //
    if (y == BigInt(1))
        return x;
    //
    if (y % 2 == 0)
        return pow(x * x, y / 2);
    else
        return x * pow(x * x, (y - 1) / 2);
}

void main()
{
    StopWatch timer;

    timer.start();
    //
    auto answer = iota(BigInt(1), 1000+1).map!(a => pow(a, a)).sum.toDecimalString()[$-10..$];
    //
    timer.stop();

    writeln(answer);

    writefln("Elapsed time: %s milliseconds.", timer.peek.total!"msecs"());
}