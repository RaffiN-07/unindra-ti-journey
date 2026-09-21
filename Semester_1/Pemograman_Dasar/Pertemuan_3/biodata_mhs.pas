program BiodataMHs;

uses crt;

var
  nama, npm, status_lulus : string;
  umur : integer;
  ipk : real;
  

begin
  clrscr;
  write('Input nama: ');
  readln(nama);
  write('Input umur: ');
  readln(umur);
  write('Input IPK: ');
  readln(ipk);
  write('Input NPM: ');
  readln(npm);
  write('Input status lulus: ');
  readln(status_lulus);

  writeln('');
  writeln('Nama: ', nama);
  writeln('Umur: ', umur);
  writeln('IPK: ', ipk:0:2);
  writeln('NPM: ', npm);
  writeln('Status Lulus: ', status_lulus);
  readln;
end.

