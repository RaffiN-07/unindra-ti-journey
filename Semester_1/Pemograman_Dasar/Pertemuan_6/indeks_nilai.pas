program Indeks_Nilai;

//latihan soal algoritma dasar pertemuan ke-6

uses crt;

var
  nilai : real;
  kehadiran : integer;
  indeks : char;
  status : string;

begin
  clrscr;
  write('Masukkan Nilai: ');
  readln(nilai);
  write('Masukkan Kehadiran (%): ');
  readln(kehadiran);

  if (nilai >= 75) then
    begin
      indeks := 'A';
      if kehadiran = 100 then
        begin
          status := 'LULUS';
        end 
      else
        begin
          status := 'LULUS BERSYARAT';
        end;
    end
  else
    begin
      indeks := 'C';
      status := 'GAGAL/TIDAK LULUS';
    end;
  

  writeln('Nilai: ', nilai:0:2);
  writeln('Indeks: ', indeks);
  writeln('Status: ', status);
  readln;
end.

