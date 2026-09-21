program NilaiMahasiswa;

uses crt;

var
  npm, nama, mata_kuliah : string;
  nilai_tugas, nilai_uts, nilai_uas, nilai_akhir : real;

begin
  clrscr;
  writeln('===== INPUT NILAI MAHASISWA =====');
  write('NPM              : ');
  readln(npm);
  write('Nama             : ');
  readln(nama);
  write('Matakuliah       : ');
  readln(mata_kuliah);
  write('Nilai Tugas      : ');
  readln(nilai_tugas);
  write('Nilai UTS        : ');
  readln(nilai_uts);
  write('Nilai UAS        : ');
  readln(nilai_uas);

  writeln('');
  writeln('===== Nilai MAHASISWA =====');
  writeln('NPM          : ', npm);
  writeln('Nama         : ', nama);
  writeln('Matakuliah   : ', mata_kuliah);
  writeln('Nilai Tugas  : ',nilai_tugas:0:1);
  writeln('Nilai UTS    : ',nilai_uts:0:1);
  writeln('Nilai UAS    : ',nilai_uas:0:1);
  writeln('----------------------------');
  nilai_akhir := (nilai_tugas * (0.2)) + (nilai_uts * (0.3)) + (nilai_uas * (0.5));
  writeln('Nilai Akhir  : ',nilai_akhir:0:1);
  readln;
end.
