program belajar_case_of_else;

uses crt;

var
  grade : string;

begin
  clrscr;

  write('Silahkan input grade anda (A-B): ');
  readln(grade);

  writeln('');

  case (grade) of
    'A' : writeln('Sangat Memuaskan');
    'B' : writeln('Memuaskan');
    'C' : writeln('Cukup');
    'D' : writeln('Kurang Baik');
    'E' : writeln('Gagal');
  else
    writeln('Maaf, format yang anda masukkan salah');
    writeln('Harap input grade berupa huruf: A, B, C, D, atau E');
  end;
  
  readln;
end.
