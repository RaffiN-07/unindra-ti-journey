program PajakPenghasilanTahunan;

uses crt;

var
    penghasilan_setahun, pajak, jumlah_pajak: real;

const
    year_salary = 60000000.0;

begin
    clrscr;
    
    write('Input Penghasilan Setahun: ');
    readln(penghasilan_setahun);
    
    if (penghasilan_setahun <= year_salary) then
        begin
            writeln('Besaran Pajak adalah 5%');
            pajak := 0.05;
        end 
    else
        begin
            writeln('Besaran Pajak adalah 10%');
            pajak := 0.1;
        end;

    jumlah_pajak := penghasilan_setahun * pajak; 

    writeln('Jumlah pajak yang dibayarkan adalah: Rp', jumlah_pajak:0:0);

    readln;
end.

