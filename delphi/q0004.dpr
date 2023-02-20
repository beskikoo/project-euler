(*
  * Project Euler
  * Question 4
  * Largest palindrome product
  * Link: https://projecteuler.net/problem=4
  *
  * Solution: 906609
  *
  * Written in Delphi 11.0 - Target Platform Windows 64-bits
  *
  * Copyright © 2023, menjaraz
*)

program q0004;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils, System.Diagnostics, System.Math, System.StrUtils;

var
  StopWatch: TStopwatch;
  ElapsedTime: Int64;

function IsPalindrome(str: string): Boolean; overload;
begin
  Result := SameText(str, ReverseString(str));
end;

function IsPalindrome(n: Integer): Boolean; overload;
begin
  Result := IsPalindrome(Trim(IntToStr(n)));
end;

function Largest3PalindromeProduct: Integer;
var
  factor1, factor2: Integer;
begin
  Result := 0;
  //
  for factor1 := 999 downto 99 do
    for factor2 := factor1 downto 99 do
    begin
      if IsPalindrome(factor1 * factor2) then
        if (Result < factor1 * factor2) then begin
          Result := (factor1 * factor2);
        end;
    end;
end;

begin
  try
    StopWatch := TStopwatch.StartNew;

    ElapsedTime := StopWatch.ElapsedMilliseconds;
    //
    Writeln(Largest3PalindromeProduct);
    //
    Writeln;
    Writeln(Format('Elapsed time: %u milliseconds.', [ElapsedTime]));

    Readln;

  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;

end.
