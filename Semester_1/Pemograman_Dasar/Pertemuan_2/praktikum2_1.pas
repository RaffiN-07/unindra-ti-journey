program HitungGaji;

uses crt;

var
  gaji_pokok, tunjangan, potongan, gaji_bersih : real;

begin
  clrscr;
  gaji_pokok := 5000000;
  tunjangan := 1000000;
  potongan := 500000;
  gaji_bersih := gaji_pokok + tunjangan - potongan;

  writeln('=========PERHITUNGAN GAJI=============');
  writeln('Gaji Pokok: Rp', gaji_pokok:0:0);
  writeln('Tunjangan: Rp', tunjangan:0:0);
  writeln('Potongan: Rp', potongan:0:0);
  writeln('--------------------------------------');
  writeln('Gaji Bersih: ', gaji_bersih:0:0);
  readln;
end.


