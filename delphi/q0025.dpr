(*
  * Project Euler
  * Question 25
  * 1000-digit Fibonacci number
  * Link: https://projecteuler.net/problem=25
  *
  * Solution: 4782
  *
  * Written in Delphi 11.0 - Target Platform Windows 64-bits
  *
  * Copyright © 2023, menjaraz
*)

program q0025;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils, System.Diagnostics, Velthuis.BigIntegers;

var
  StopWatch: TStopwatch;
  ElapsedTime: Int64;

  a, b, c: BigInteger;
  index: Integer;
  Str: string;

begin
  try
    StopWatch := TStopwatch.StartNew;
    //

    a := BigInteger(1);
    b := BigInteger(1);

    index := 2;

    while (b.ToString.Length < 1000) do begin
      c := (a + b);

      a := b;
      b := c;

      index := index + 1;
    end;

    //
    ElapsedTime := StopWatch.ElapsedMilliseconds;

    Writeln(index);

    Writeln;
    Writeln(Format('Elapsed time: %u milliseconds.', [ElapsedTime]));

    Readln;

  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;

end.
