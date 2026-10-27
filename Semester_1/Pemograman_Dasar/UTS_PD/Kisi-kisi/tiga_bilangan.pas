program TigaBilangan;
uses crt;
var
    bil_I, bil_II, bil_III, hasil : integer;
begin
    clrscr;
    write('Bilangan Pertama = ');
    readln(bil_I);
    write('Bilangan Kedua = ');
    readln(bil_II);
    write('Bilangan Ketiga = ');
    readln(bil_III);
    if ((bil_I = bil_II) and (bil_II = bil_III)) then
        hasil := 0        
    else
        begin
            hasil := bil_I;
            if bil_II > hasil then
                hasil := bil_II;
            if bil_III > hasil then
                hasil := bil_III;
        end;
    writeln('Hasil = ', hasil);
    readln;
end.

