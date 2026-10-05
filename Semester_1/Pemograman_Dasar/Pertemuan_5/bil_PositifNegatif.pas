program Bilangan_PositifNegatif;

uses crt;

var
  bilangan : integer;

begin
  clrscr;
  write('Masukkan bilangan: ');
  readln(bilangan);
  
  writeln('');

  if bilangan > 0 then
    writeln(bilangan, ' Adalah bilangan Bulat Positif')
  else if bilangan < 0 then 
    writeln(bilangan, ' Adalah bilangan Bulat Negatif')
  else
    writeln(bilangan,' Adalah Bilangan 0');
  readln;
end.

