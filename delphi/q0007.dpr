(*
  * Project Euler
  * Question 7
  * 10001st prime
  * Link: https://projecteuler.net/problem=7
  *
  * Solution: 104743
  *
  * Written in Delphi 11.0 - Target Platform Windows 64-bits
  *
  * Copyright © 2023, menjaraz
*)

program q0007;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils, System.Diagnostics;

type
  TPrimeGenerator = class
  private
    function IsPrime(num: Integer): Boolean;
  public
    function GetNthPrime(n: Integer): Integer;
  end;

var
  StopWatch: TStopwatch;
  ElapsedTime: Int64;

  pg: TPrimeGenerator;
  n: Integer;

function TPrimeGenerator.IsPrime(num: Integer): Boolean;
var
  i: Integer;
begin
  Result := True;
  //
  if num < 2 then
    Result := False
  else
    for i := 2 to Round(Sqrt(num)) do
      if num mod i = 0 then
      begin
        Result := False;
        //
        Exit;
      end;
end;

function TPrimeGenerator.GetNthPrime(n: Integer): Integer;
var
  count, num: Integer;
begin
  count := 0;
  num := 2;
  //
  while count < n do
  begin
    if IsPrime(num) then
      Inc(count);
    //
    Inc(num);
  end;
  //
  Result := num - 1;
end;

begin
  try
    StopWatch := TStopwatch.StartNew;
    //

    pg := TPrimeGenerator.Create;

    try
      n := 10001;
      //
      WriteLn('The ', n, ' th prime number is ', pg.GetNthPrime(n));
      //
      ElapsedTime := StopWatch.ElapsedMilliseconds;
    finally
      pg.Free;
    end;

    //

    WriteLn;
    WriteLn(Format('Elapsed time: %u milliseconds.', [ElapsedTime]));

    Readln;

  except
    on E: Exception do
      WriteLn(E.ClassName, ': ', E.Message);
  end;

end.
