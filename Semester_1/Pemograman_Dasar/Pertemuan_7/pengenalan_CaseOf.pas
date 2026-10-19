program Pengenalan_CaseOf;

uses crt;

var
  bilangan : integer;

begin
  clrscr;

  write('Input Bilangan : ');
  readln(bilangan);

  case (bilangan) of 
    1 : writeln('Satu');
    2 : writeln('Dua');
    3 : writeln('Tiga');
    4 : writeln('Empat');
  end;

  readln;
end.
