(*
  * Project Euler
  * Question 14
  * Longest Collatz sequence
  * Link: https://projecteuler.net/problem=14
  *
  * Solution: 837799
  *
  * Written in Delphi 11.0 - Target Platform Windows 64-bits
  *
  * Copyright © 2023, menjaraz
*)

program q0014;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils, System.Diagnostics, Math;

var
  StopWatch: TStopwatch;
  ElapsedTime: Int64;

  maxlen, curlen, answer, n: UInt64;

function CollatzSeqLen(n: UInt64): UInt64;
begin
  Result := 1;

  while (n <> 1) do
  begin
    if (n mod 2 = 0) then
      n := n div 2
    else
      n := 3 * n + 1;
    //
    Result := Result + 1;
  end;

end;

begin
  try
    StopWatch := TStopwatch.StartNew;
    //

    maxlen := 0;

    for n := 1 to 1000000 do
    begin
      curlen := CollatzSeqLen(n);

      if (curlen > maxlen) then
      begin
        maxlen := curlen;
        answer := n;
      end;

    end;


    Writeln(answer);

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
