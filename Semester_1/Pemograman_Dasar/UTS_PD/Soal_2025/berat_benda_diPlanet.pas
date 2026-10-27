program berat_benda_diPlanet;

uses crt;

var
    berat_di_bumi, berat_di_planet_lain, gravitasi_planet_lain: real;

begin
    clrscr;
    write('Input Berat benda di Bumi (kg): ');
    readln(berat_di_bumi);

    write('Input gravitasi planet tujuan (m/s^2): ');
    readln(gravitasi_planet_lain);

    berat_di_planet_lain := berat_di_bumi * gravitasi_planet_lain / 9.8;

    writeln('Berat benda di planet tersebut adalah: ', berat_di_planet_lain:0:2, ' kg');

    if (berat_di_planet_lain < berat_di_bumi) then
        writeln('Berat benda lebih ringan dari pada di planet bumi')
    else
        writeln('Berat benda lebih berat dari pada di planet bumi');

    readln;
end.
