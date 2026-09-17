program Pertemuan1_PemogramanDasar;

{
=============================================
Program : Belajar Pascal
Penulis : Raffi
Format  : Komentar multi baris kurung kurawal
=============================================
}

var
  {deklarasi tipe data variabel}
  nama : string;
  npm: string;
  tempat_lahir : string;
  tanggal_lahir : integer;
  alamat : string;
  program_studi : string;



begin
  {
  memasukkan isi nilai dari variabel
  yang sudah didefinisikan diatas
  }

  nama := 'Muhammad Raffi Nugraha';
  npm := '202643500403';
  tempat_lahir := 'Jakarta';
  tanggal_lahir := 7;
  alamat := 'Jl. Duren Baru Poncol, Citayem';
  program_studi := 'Teknik Informatika';

  {output program}

  writeln('===============================');
  writeln('             BIODATA           ');
  writeln('===============================');
  writeln('Nama          :', nama          );
  writeln('NPM           :', npm           );
  writeln('Tempat Lahir  :', tempat_lahir  );
  writeln('Tanggal Lahir :', tanggal_lahir );
  writeln('Alamat        :', alamat        );
  writeln('Program Studi :', program_studi );
  writeln('===============================');
  
  readln;
end.
