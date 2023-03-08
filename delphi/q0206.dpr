(*
  * Project Euler
  * Question 206
  * Concealed Square
  * Link: https://projecteuler.net/problem=206
  *
  * Solution: 1389019170
  *
  * Written in Delphi 11.0 - Target Platform Windows 64-bits
  *
  * Copyright © 2023, menjaraz
*)

program q0206;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils, System.Diagnostics, System.Math;

const
  Pattern = '1_2_3_4_5_6_7_8_9_0';

var
  StopWatch: TStopwatch;
  ElapsedTime: Int64;

  n, Sqr, x, answer: Int64;

  s: string;

function isqrt(x: Int64): Int64;
var
  q, r, t: Int64;
begin
  q := 1;
  r := 0;

  while (q <= x) do
    q := q shl 2;

  while (q > 1) do
  begin
    q := q shr 2;
    t := x - r - q;
    r := r shr 1;

    if (t >= 0) then
    begin
      x := t;
      r := r + q;
    end;
  end;

  Result := r;
end;

begin
  try
    StopWatch := TStopwatch.StartNew;
    //

    answer := -1;

    for n := isqrt(1929394959697989990) downto isqrt(1020304050607080900) do
    begin
      Sqr := n * n;
      s := IntToStr(Sqr);

      if (Sqr mod 10 = 0) then
      begin
        for x := 1 to 9 do
          s[2 * x] := '_';

        if (s = Pattern) then
        begin
          // answer found
          answer := n;
          //
          break;
        end;

      end;

    end;

    //
    ElapsedTime := StopWatch.ElapsedMilliseconds;

    assert(answer <> -1, 'Wrong answer');

    WriteLn(answer);

    WriteLn;
    WriteLn(Format('Elapsed time: %u milliseconds.', [ElapsedTime]));

    Readln;

  except
    on E: Exception do
      WriteLn(E.ClassName, ': ', E.Message);
  end;

end.
