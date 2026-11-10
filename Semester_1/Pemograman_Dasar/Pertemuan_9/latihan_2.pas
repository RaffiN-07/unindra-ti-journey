program KasirToko;

uses crt;

var
  harga_barang, total_belanja : longint;

begin
  clrscr;
  
  total_belanja := 0;

  writeln('=== PROGRAM KASIR TOKO ===');
  writeln('(Masukkan harga 0 jika transaksi selesai)');

  writeln('');

  write('Masukkan harga barang: ');
  readln(harga_barang);
  
  total_belanja := total_belanja + harga_barang;

  while (harga_barang <> 0) do
    begin
      write('Masukkan harga barang: ');
      readln(harga_barang);
      
      total_belanja := total_belanja + harga_barang;
      
    end;

  writeln('');
  writeln('==================================');
  writeln('Total Belanja: Rp ', total_belanja);
  writeln('Terimakasih telah berbelanja!');
  writeln('==================================');

  readln;
end.
