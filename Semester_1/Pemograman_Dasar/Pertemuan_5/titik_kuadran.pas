program Titik_Kuadran;

uses crt;

var
  x, y : integer;

begin
  clrscr;
  write('Input nilai x: ');
  readln(x);
  write('Input nilai y: ');
  readln(y);

  writeln('');

  if (x > 0) and (y > 0) then {kuadran I}
    writeln('Titik (', x, ',', y, ') Berada di Kuadran I')
  else if (x < 0) and (y > 0) then {kuadran II}
    writeln('Titik (', x, ',', y, ') Berada di Kuadran II')
  else if (x < 0) and (y < 0) then {kuadran III}
    writeln('Titik (', x, ',', y, ') Berada di Kuadran III')
  else if (x > 0) and (y < 0) then {kuadran IV}
    writeln('Titik (', x, ',', y, ') Berada di Kuadran IV')
  else {Berada Di sumbu X}
    writeln('Titik (', x, ',', y, ') Berada di Sumbu X');
  readln;
end.
