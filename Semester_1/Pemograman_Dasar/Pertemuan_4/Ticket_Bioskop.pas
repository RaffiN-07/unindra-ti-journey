program TicketBioskop;

{menggunakan percabangan if then else,
karena terdapat dua kondisi yang berbeda}

uses crt;

var
  nama_pengunjung : string;
  usia : integer;

begin
  clrscr;

  write('Nama Pengunjung : ');
  readln(nama_pengunjung);
  write('Usia (tahun)    : ');
  readln(usia);

  if usia < 13 then
    begin
      writeln('');
      writeln('=====================');
      writeln('Kategori : Anak-anak');
      writeln('Harga    : Rp 30.000');
      writeln('=====================');
    end 
  else
    begin
      writeln();
      writeln('=====================');
      writeln('Kategori : Dewasa');
      writeln('Harga    : Rp 50.000');
      writeln('=====================');
    end;
  readln;
end.
