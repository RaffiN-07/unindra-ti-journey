program KemasAir;

uses crt;

var
  air, b600, b300: longint;

begin
    clrscr;
    write('Input Jumlah Air: '); 
    readln(air);

    if (air mod 300 <> 0) then
        writeln('Air tidak bisa dikemas habis dengan botol 600 ml dan 300 ml')
    else
        begin
            b600 := air div 600;
            b300 := (air mod 600) div 300;

            writeln('Jumlah Botol 600 ml: ', b600);
            writeln('Jumlah Botol 300 ml: ', b300);
        end;
end.