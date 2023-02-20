(*
  * Project Euler
  * Question 3
  * Largest prime factor
  * Link: https://projecteuler.net/problem=3
  *
  * Solution: 6857
  *
  * Written in Delphi 11.0 - Target Platform Windows 64-bits
  *
  * Copyright © 2023, menjaraz
*)

program q0003;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils, System.Diagnostics;

function largestPrimeFactor(const n: Int64): Int64;
var
  limit: Int64;
  i, k: Int64;
begin
  limit := n div 2;
  Result := n;

  //
  i := 3;
  while (i < limit) do
  begin
    //
    k := Result;
    while (k mod i) = 0 do
    begin
      k := k div i;
      limit := k div 2;
      //
      Result := k;
    end;

    //
    i := i + 2;
  end;

end;

var
  StopWatch: TStopwatch;
  ElapsedTime: Int64;

begin
  try
    StopWatch := TStopwatch.StartNew;

    StopWatch.Start;
    //
    Writeln(largestPrimeFactor(600851475143));
    //
    StopWatch.Stop;

    ElapsedTime := StopWatch.ElapsedMilliseconds;

    Writeln;
    Writeln(Format('Elapsed time: %u milliseconds.', [ElapsedTime]));

    Readln;

  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;

end.
