(*
  * Project Euler
  * Question 16
  * Power digit sum
  * Link: https://projecteuler.net/problem=16
  *
  * Solution: 1366
  *
  * Written in Delphi 11.0 - Target Platform Windows 64-bits
  *
  * Copyright © 2023, menjaraz
*)

program q0016;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils, System.Diagnostics, Velthuis.BigIntegers;

var
  StopWatch: TStopwatch;
  ElapsedTime: Int64;
  digits: BigInteger;
  i, answer: Integer;
  Str: string;

begin
  try
    StopWatch := TStopwatch.StartNew;
    //

    digits := BigInteger.pow(2, 1000);

    Str := digits.ToString;
    answer := 0;

    for i := 0 to Str.Length-1 do
    begin
      answer := answer + StrToInt(Str.Substring(i,1));
    end;

    //
    ElapsedTime := StopWatch.ElapsedMilliseconds;

    Writeln(answer);

    Writeln;
    Writeln(Format('Elapsed time: %u milliseconds.', [ElapsedTime]));

    Readln;

  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;

end.
