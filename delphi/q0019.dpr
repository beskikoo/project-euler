(*
  * Project Euler
  * Question 19
  * Counting Sundays
  * Link: https://projecteuler.net/problem=19
  *
  * Solution: 171
  *
  * Written in Delphi 11.0 - Target Platform Windows 64-bits
  *
  * Copyright © 2023, menjaraz
*)

program q0019;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils, System.Diagnostics, System.DateUtils;

var
  StopWatch: TStopwatch;
  ElapsedTime: Int64;

  count: Integer;
  year, month: Word;
  sunday: TDateTime;

begin
  try
    
    StopWatch := TStopwatch.StartNew;
    //
    count := 0;

    for year := 1901 to 2000 do
      for month := 1 to 12 do
      begin
        sunday := EncodeDate(year, month, 1);

        if DayOfWeek(sunday) = DaySunday then
        begin
          Inc(count);
        end;

      end;
    //
    StopWatch.Stop;
    
    ElapsedTime := StopWatch.ElapsedMilliseconds;

    Writeln(count);
    Writeln;
    Writeln(Format('Elapsed time: %u milliseconds.', [ElapsedTime]));

    Readln;

  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;

end.
