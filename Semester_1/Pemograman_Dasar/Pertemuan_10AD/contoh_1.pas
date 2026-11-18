program KoordinatAngka;

uses crt;

var
  baris, kolom: integer;

begin
  clrscr;

  baris := 1;

  while (baris <= 10) do
    begin
      kolom := 2;
      while (kolom <= 10) do
        begin
          // Aksi atau proses yang diulang
          writeln('Baris : ',baris, ' Kolom : ', kolom);
          kolom := kolom + 1;
        end;
      baris := baris + 1;
    end;

  readln;
end.
