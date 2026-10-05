program kategori_nilai;

uses crt;

var
  nilai : integer;

begin
  clrscr;
  write('Masukkan Nilai: ');
  readln(nilai);
  
  writeln('');

  if nilai >= 90 then
    writeln('Grade A')
  else if nilai >= 80 then
    writeln('Grade B')
  else if nilai >= 70 then 
    writeln('Grade C')
  else if nilai >= 60 then 
    writeln('Grade D')
  else
    writeln('Grade E');
  readln;
end.
