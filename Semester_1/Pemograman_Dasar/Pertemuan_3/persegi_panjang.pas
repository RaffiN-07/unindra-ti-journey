program HitungLuasPP;

uses crt;

var
  panjang, lebar, luas, keliling : integer;

begin
  clrscr;
  write('Masukkan Nilai Panjang: ');
  readln(panjang);
  write('Masukkan Nilai Lebar: ');
  readln(lebar);
  
  writeln('');
  luas := panjang * lebar;
  keliling := 2 * (panjang + lebar);
  writeln('Luas Persegi Panjang adalah: ', luas);
  writeln('Keliling Persegi Panjang: ', keliling);
  readln;

end.
