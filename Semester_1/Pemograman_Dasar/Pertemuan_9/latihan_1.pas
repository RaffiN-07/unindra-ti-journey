program TotalJumlahBilangan;

uses crt;

var
  bilangan, i, total_jumlah : integer;

begin
  clrscr;
  
  total_jumlah :=  0;

  i := 1;

  write('Input bilangan (n) : ');
  readln(bilangan);

  while (i <= bilangan) do
    begin
      write(i, ' ');
      total_jumlah := total_jumlah + i;
      i := i + 1;
    end;
 
  writeln('');
  writeln('Total jumlah : ', total_jumlah);

  readln;
  
end.
