(*
  * Project Euler
  * Question 820
  * Nth digit of Reciprocals
  * Link: https://projecteuler.net/problem=820
  *
  * Solution: 44967734
  *
  * Written in Delphi 11.0 - Target Platform Windows 64-bits
  *
  * Copyright © 2023, menjaraz
*)

program q0820;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils, System.Diagnostics, System.Math;

var
  StopWatch: TStopwatch;
  ElapsedTime: Int64;


function PowerModulo(a, power, modulo: Int64): Int64;
var
  b: Int64;
begin

  if (power = 0) then begin
    Result := 1;
    Exit;
  end;

  if (power mod 2 = 1) then
  begin
    Result := (a * PowerModulo(a, power - 1, modulo)) mod modulo;
    Exit;
  end;

  b := PowerModulo(a, power div 2, modulo) mod modulo;

  Result := (b * b) mod modulo;

end;

function SumDecimal(n: Integer): Int64;
var
  i: Int64;
begin
  Result := 0;
  //
  for i := 1 to n do
  begin
    Result := Result + (PowerModulo(10, n-1, i) * 10) div i;
  end;
end;

begin
  try
    StopWatch := TStopwatch.StartNew;
    //
    Writeln(SumDecimal(10000000));
    //
    ElapsedTime := StopWatch.ElapsedMilliseconds;

    Writeln;
    Writeln(Format('Elapsed time: %u milliseconds.', [ElapsedTime]));

    Readln;

  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;

end.
