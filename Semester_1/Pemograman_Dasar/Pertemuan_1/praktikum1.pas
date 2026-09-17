program BelajarPascal;

{
==============================================
Program  : Belajar Belajar
Penulis  : Muhammad Raffi Nugraha
Format   : Komentar multi-baris kurung kurawal
==============================================
}

var
  nama, npm, program_studi : string;

begin
  // menampilkan header
  nama := 'Muhammad Raffi Nugraha';
  npm := '202643500403';
  program_studi := 'Teknik Informatika';
  writeln(StringOfChar('=',35));
  writeln('            Pemograman Dasar             ');
  writeln(StringOfChar('=',35));

  {menampilkan data}
  writeln('Nama Mahasiswa  : ', nama);
  writeln('NPM             : ', npm);
  writeln('Program Studi   : ', program_studi);
  writeln(StringOfChar('=',35));

  readln;
end.
