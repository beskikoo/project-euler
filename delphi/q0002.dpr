(*
  * Project Euler
  * Question 2
  * Even Fibonacci numbers
  * Link: https://projecteuler.net/problem=2
  *
  * Solution: 4613732
  *
  * Written in Delphi 11.0 - Target Platform Windows 64-bits
  *
  * Copyright © 2023, menjaraz
*)

program q0002;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils, System.Diagnostics;

function SumOfEvenFibo(const n:Integer): Integer;
var
  NextFib: Integer;
  f: array [0 .. 1] of Integer;
begin

  f[0] := 0;
  f[1] := 1;

  Result := 0; // No even fibo number so far


  repeat
    NextFib := f[0] + f[1];

    if (NextFib mod 2 = 0) then Result := Result + NextFib;

     f[0] := f[1];
     f[1] := NextFib;

  until (Result > 4000000);

end;


var
  StopWatch: TStopwatch;
  ElapsedTime: Int64;

begin
  try
    StopWatch := TStopwatch.StartNew;

    //
    Writeln(SumOfEvenFibo(4000000));
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
