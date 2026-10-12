program ContohNestedIf;

uses crt;

var
  nilai : integer;
  kehadiran : real;

begin
  clrscr;
  write('Masukkan Nilai Ujian (0-100): ');
  readln(nilai);
  write('Masukkan Presentase Kehadiran (%): ');
  readln(kehadiran);
  
  writeln('');

  // IF Tingkat Pertama (Induk)
  if (nilai >= 75) then
    begin
      // IF Tingkat Kedua (Bersarang di dalam THEN)
      if (kehadiran >= 80.0) then
        begin
          writeln('Selamat! Anda LULUS dengan Predikat MEMUASKAN.');
        end
      else
        begin
          writeln('Anda LULUS BERSYARAT karena kehadiran kurang.');
        end;
    end
  else
    begin
      // IF Bersarang di dalam ELSE
      if (nilai >= 60) then
        begin
          writeln('Anda harus mengikuti UJIAN REMEDIAL.');
        end
      else
        begin
          writeln('Maaf, Anda dinyatakan TIDAK LULUS');
        end;
    end;
  readln;
end.
