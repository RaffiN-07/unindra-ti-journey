program PerulanganRepeatUntil;

uses crt;

var
  i : integer;

begin
  clrscr;

  i := 1;

  repeat
    writeln(i);
    i := i + 1;
  until i > 5;
  
  readln;
end.
