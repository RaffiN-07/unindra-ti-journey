program ContohIfthenElse;

uses crt;

var
  nilai : integer;

begin
  clrscr;
  {pada percabangan if then else,
  adalah dimana mengecek dua kondisi jika ya maka lakukan ini
  sedangkan selain itu atau bukan lakukan ini.}
  nilai := 40;

  if nilai >=60 then
    writeln('Lulus')
  else
    writeln('Tidak Lulus');
  readln;
end.
