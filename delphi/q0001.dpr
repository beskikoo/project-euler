(*
  * Project Euler
  * Question 1
  * Multiples of 3 or 5
  * Link: https://projecteuler.net/problem=1
  *
  * Solution: 233168
  *
  * Written in Delphi 11.0 - Target Platform Windows 64-bits
  *
  * Copyright © 2023, menjaraz
*)

program q0001;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils,
  System.Diagnostics;

var
  StopWatch: TStopwatch;
  ElapsedTime: Int64;

// S(n) = 1+2+3+4.......n = n(n+1)/2

function SumOfMult(const n, k: Integer): Integer; overload;
var
  Count: Integer;
begin

  // Sum of Multiples of k

  Assert(n>0);
  Assert(k>0);

  Count := (n-1) div k;

  Result :=  k*Count*(Count+1) div 2;
end;


function SumOfMult(const n, k, l: Integer): Integer;  overload;
begin
  // Sum of Multiples of k or l

  Assert(k<>l);

  Result := SumOfMult(n, k) + SumOfMult(n, l) - SumOfMult(n, (k*l));

end;

begin
  try
    StopWatch := TStopwatch.StartNew;
    //
     Writeln(SumOfMult(1000,3,5));
    //
    StopWatch.Stop;
	.
    ElapsedTime := StopWatch.ElapsedMilliseconds;
	
    Writeln;
    Writeln(Format('Elapsed time: %u milliseconds.', [ElapsedTime]));

    Readln;

  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;

end.
