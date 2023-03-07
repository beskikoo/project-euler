(*
  * Project Euler
  * Question 13
  * Large sum
  * Link: https://projecteuler.net/problem=13
  *
  * Solution: 5537376230
  *
  * Written in Delphi 11.0 - Target Platform Windows 64-bits
  *
  * Copyright © 2023, menjaraz
*)

program q0013;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils, System.Classes, System.Diagnostics, Velthuis.BigIntegers;

var
  StopWatch: TStopwatch;
  ElapsedTime: Int64;

  Lines: TStringList;
  Line: string;

  answer: BigInteger;
  Str: string;

begin
  try
    StopWatch := TStopwatch.StartNew;
    //

    Lines := TStringList.Create;

    Try
      Lines.LoadFromFile('numbers.txt');

      answer := BigInteger(0);

      for Line in Lines do
      begin
        answer := answer + BigInteger(Line);
      end;

      Str := answer.ToString;

      Writeln(Str.Substring(0, 10));

    Finally
      Lines.Destroy;
    End;

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
