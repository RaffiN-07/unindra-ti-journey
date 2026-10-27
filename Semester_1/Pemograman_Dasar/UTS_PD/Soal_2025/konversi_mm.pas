program Konversi_mm;

uses crt;

var
    total_mm, m, cm, mm, sisa_mm : longint;

begin
    clrscr;
    write('Masukkan panjang dalam milimeter (mm): ');
    {input total_m : 2354}
    readln(total_mm);

    {mencari nilai mm}
    m := total_mm div 1000;

    {mencari nilai bagi sisa dari mm}
    sisa_mm := total_mm mod 1000;


    cm := sisa_mm div 10;

    mm := sisa_mm mod 10;

    writeln('Meter (m): ', m);
    writeln('Centimeter (cm): ', cm);
    writeln('Milimeter (mm): ', mm);

    writeln('Hasil Konversi: ', m ,' m, ', cm, ' cm, ', mm, ' mm' );

    readln;
end.
