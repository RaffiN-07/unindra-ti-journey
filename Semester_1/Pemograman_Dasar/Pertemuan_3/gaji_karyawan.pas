program SlipGajiKaryawan;

uses crt;

var
  nama_karyawan : string;
  gaji_karyawan,gaji_bersih,tunjangan,pajak : real;

begin
  clrscr;
  writeln('===== PERHITUNGAN GAJI KARYAWAN ======');
  write('Nama                : ');
  readln(nama_karyawan);
  write('Gaji Pokok          : ');
  readln(gaji_karyawan);

  writeln('');
  tunjangan := gaji_karyawan * 0.2;
  pajak := (gaji_karyawan + tunjangan) * 0.15;
  gaji_bersih := gaji_karyawan + tunjangan - pajak;
  writeln('========= SLIP GAJI KARYAWAN =========');
  writeln('Nama           : ', nama_karyawan);
  writeln('--------------------------------------');
  writeln('Gaji Pokok     : ', gaji_karyawan:0:0);
  writeln('Tunjangan      : ', tunjangan:0:0);
  writeln('Pajak          : ', pajak:0:0);
  writeln('--------------------------------------');
  writeln('Gaji Bersih    : ', gaji_bersih:0:0);
  readln;
end.

