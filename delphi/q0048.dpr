(*
  * Project Euler
  * Question 48
  * Self powers
  * Link: https://projecteuler.net/problem=48
  *
  * Solution: 9110846700
  *
  * Written in Delphi 11.0 - Target Platform Windows 64-bits
  *
  * Copyright © 2023, menjaraz
*)

program q0048;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils, System.Diagnostics, Velthuis.BigIntegers;

var
  StopWatch: TStopwatch;
  ElapsedTime: Int64;

  answer: BigInteger;
  i: Integer;
  Str: string;

begin
  try
    StopWatch := TStopwatch.StartNew;
    //

    answer := 0;

    for i := 1 to 1000 do
    begin
      answer := answer + BigInteger.pow(i, i);
    end;

    //
    ElapsedTime := StopWatch.ElapsedMilliseconds;

    Str := answer.ToString;

    Writeln(Str.Substring(Str.Length-10, 10));

    Writeln;
    Writeln(Format('Elapsed time: %u milliseconds.', [ElapsedTime]));

    Readln;

  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;

end.
