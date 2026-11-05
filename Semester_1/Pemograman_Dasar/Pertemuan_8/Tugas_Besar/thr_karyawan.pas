program ThrKaryawan;
uses crt;

var
    gaji_pokok, tunjangan_tetap, upah_thr, masa_kerja, thr_tambahan, thr, total_thr: real;

begin
    clrscr;

    write('Input Gaji Pokok               : ');
    readln(gaji_pokok);
    write('Input Tunjangan tetap          : ');
    readln(tunjangan_tetap);
    write('Input Masa Kerja (dalam bulan) : ');
    readln(masa_kerja);

    upah_thr := gaji_pokok + tunjangan_tetap;

    if masa_kerja < 1 then
        thr := 0
    else if masa_kerja <= 11 then
        thr := (masa_kerja / 12) * upah_thr
    else
        thr := 1 * upah_thr;

    if masa_kerja >= 60 then
        thr_tambahan := 0.25 * thr;
    
    total_thr :=  thr + thr_tambahan;
    
    writeln('');
    writeln('=== Perhitungan THR ===');
    writeln('Gaji Pokok             : Rp',gaji_pokok:0:2);
    writeln('THR                    : Rp',thr:0:2);
    writeln('Tambahan THR           : Rp',thr_tambahan:0:2);
    writeln('-------------------------------------');
    writeln('Total THR yang didapat : Rp',total_thr:0:2);

    readln;
end.
