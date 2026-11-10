program PengenalanWhileDo;

uses crt;

var
  i : integer;

begin
  clrscr;

  i := 1;

  while (i <= 5) do
    begin
      writeln(i);
      i := i + 1;
  end;

  readln;
end.
