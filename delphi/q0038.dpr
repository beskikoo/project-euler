(*
  * Project Euler
  * Question 38
  * Pandigital multiples
  * Link: https://projecteuler.net/problem=38
  *
  * Solution: 932718654
  *
  * Written in Delphi 11.0 - Target Platform Windows 64-bits
  *
  * Copyright © 2023, menjaraz
*)

program q0038;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils, System.Diagnostics;

var
  StopWatch: TStopwatch;
  ElapsedTime: Int64;
  MaxP: Integer;
  m, n, candidate: Integer;

function IsPandigital9(const n: Integer): Boolean;
var
  Str: string;
begin
  if (n = 0) then
    Result := False
  else
  begin
    Str := IntToStr(n);

    // All digits Ok, no Duplicate
    Result := Str.Contains('1') and Str.Contains('2') and Str.Contains('3') and
      Str.Contains('4') and Str.Contains('5') and Str.Contains('6') and
      Str.Contains('7') and Str.Contains('8') and Str.Contains('9');
  end;
end;

// Anything containing significative digit 0 or more than 9 length
// is ruled out before hand
function GenCandidate9(const k, l: Integer): Integer;
var
  Str: string;
  i: Integer;
begin

  Str := '';

  for i := 1 to l do
  begin
    Str := Str + Trim(IntToStr(i * k));
  end;

  if (not Str.Contains('0') and (Str.Length = 9)) then
  begin
    Result := StrToInt(Str)
  end
  else
    Result := 0;

end;

begin
  try
    
    StopWatch := TStopwatch.StartNew;
    //
    MaxP := 0;

    for m := 9999 downto 1 do
      for n := 9 downto 2 do
      begin

        candidate := GenCandidate9(m, n);

        if IsPandigital9(candidate) then
        begin
          if (candidate > MaxP) then
            MaxP := candidate;
        end;

      end;
    //
    StopWatch.Stop;
    
    
    ElapsedTime := StopWatch.ElapsedMilliseconds;

    //
    Writeln(MaxP);

    Writeln;
    Writeln(Format('Elapsed time: %u milliseconds.', [ElapsedTime]));

    Readln;

  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;

end.
