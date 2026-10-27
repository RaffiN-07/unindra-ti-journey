program UTS_Empat;

uses crt;

var
  angka, a, b, c, status, d: integer;

begin
    clrscr;
    write('Input 2 digit terakhir NPM anda : ');
    {input npm saya: 03 jadi 3}
    readln(angka);
    angka := 300 + angka;
    a := angka div 100;
    b := (angka div 10) mod 10;
    c := angka mod 10;

    status := 0;
    if (a = c) then
        status := 1;

    case status of
        1: d := ((a * 2 + 8) div 2) - a;
        0: d := ((c * 2 + 8) div 2) - c;
    end;

    writeln('Nilai a : ', a);
    writeln('Nilai b : ', b);
    writeln('Nilai c : ', c);
    writeln('Nilai d : ', d);

    readln;
    
    {
    output:
    Nilai a : 3
    Nilai b : 0
    Nilai c : 3
    Nilai d : 4
    }
    
end.