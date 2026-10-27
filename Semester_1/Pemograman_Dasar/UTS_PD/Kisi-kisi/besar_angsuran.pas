program BesarAngsuran;

uses crt;

var
    total_pinjaman, lama_pinjaman, besar_angsuran : real;

begin
    clrscr;
    write('Total Pinjaman: ');
    readln(total_pinjaman);

    write('Lama Pinjam (bulan): ');
    readln(lama_pinjaman);

    besar_angsuran := total_pinjaman / lama_pinjaman;

    writeln('Besaran Angsuran per bulan: Rp', besar_angsuran:0:0);

    readln;
end.

