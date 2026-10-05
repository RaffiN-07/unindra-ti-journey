program pajak_penghasilan_tahunan;

uses crt;

var
  penghasilan_setahun, pajak : real;

begin
  clrscr;
  write('Input Penghasilan Setahun: ');
  readln(penghasilan_setahun);
  
  writeln('==========================');

  if penghasilan_setahun <= 60000000.0 then
    begin
      pajak := 0.05 * penghasilan_setahun;
      writeln('Besaran Pajak adalah 5% ');
      writeln('Jumlah pajak yang dibayarkan adalah: ', pajak:0:0);
    end
  else
    begin 
      pajak := 0.1 * penghasilan_setahun;
      writeln('Besaran Pajak adalah 10%');
      writeln('Jumlah pajak yang dibayarkan adalah: ', pajak:0:0);
    end;
  readln;
end.
