program deklarasi_variabel;

uses crt;

var {Deklarasi tipe data Variabel}
  umur : integer;
  nama : string;
  ipk : real;
  mahasiswa_unindra : boolean;

begin
  clrscr;
  umur := 19; {memasukkan nilai kedalam variabel}
  nama := 'Muhammad Raffi Nugraha';
  ipk := 4.0;
  mahasiswa_unindra := true;

  writeln('========================================');
  writeln('              DATA MAHASISWA            ');
  writeln('========================================');
  writeln('Umur saya berusia: ', umur); {memanggil data dari variabel}
  writeln('Nama saya adalah: ', nama);
  writeln('IPK saya adalah: ', ipk:0:2);
  writeln('Saya adalah Mahasiswa Unindra: ', mahasiswa_unindra);
  writeln('========================================');
  readln;
end.
