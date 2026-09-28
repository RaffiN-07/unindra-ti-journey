program MaskapaiPenerbangan;

{program ini menggunakan percabangan
if then tunggal}
uses crt;

var
  nama : string;
  berat_bagasi : integer;
  biaya_tambahan, kelebihan_berat : real;

begin
  clrscr;
  write('Nama Penumpang: ');
  readln(nama);
  write('Berat Bagasi: ');
  readln(berat_bagasi);

  if berat_bagasi >= 20 then
    writeln('');
    writeln('[PERINGATAN] Bagasi Anda melebihi batas 20 Kg');
    kelebihan_berat := berat_bagasi - 20;
    writeln('Kelebihan berat: ', kelebihan_berat:0:0, ' Kg');

    writeln('=============================');
    writeln('Nama Penumpang: ', nama);
    writeln('Berat Bagasi: ', berat_bagasi, ' Kg');
    biaya_tambahan := 50000 * kelebihan_berat;
    writeln('Biaya Tambahan: Rp ', biaya_tambahan:0:0);
    writeln('=============================');
  readln;
end.

