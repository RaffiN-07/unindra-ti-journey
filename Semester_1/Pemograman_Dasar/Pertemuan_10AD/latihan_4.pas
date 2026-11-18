program Contoh2;

var
  a, b : integer;

begin
  a := 5;
  while (a >= 1) do
    begin
      b := a;
      while ( b >= 1) do
        begin
          write(b, ' ');
          b := b - 1;
        end;
      writeln();
      a := a - 1;
    end;

  readln;
end.

