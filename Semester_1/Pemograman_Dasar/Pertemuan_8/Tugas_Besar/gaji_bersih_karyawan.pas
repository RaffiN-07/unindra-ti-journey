program GajiBersihkaryawan;

uses crt;

var
    bonus_kehadiran: longint;
    hari_hadir,jam_lembur, hari_kerja_penuh: integer;
    uang_makan, gaji_pokok, upah_lembur, tarif_lembur, pot_bpjs, gaji_bersih: real;

begin
    clrscr;
    write('Input Gaji Pokok        : ');
    readln(gaji_pokok);
    write('Input Hari Hadir        : ');
    readln(hari_hadir);
    write('Input Jumlah Jam Lembur : ');
    readln(jam_lembur);

    {inisialisasi nilai variabel}
    uang_makan := 40000 * hari_hadir;
    hari_kerja_penuh := 22;

    if hari_hadir = hari_kerja_penuh then
        bonus_kehadiran := 300000
    else
        bonus_kehadiran := 0;

    upah_lembur := gaji_pokok / 173;

    tarif_lembur := jam_lembur * upah_lembur;

    pot_bpjs := 0.04 * gaji_pokok;

    gaji_bersih := gaji_pokok + uang_makan + tarif_lembur + bonus_kehadiran - pot_bpjs;

    {output program}
    writeln('');

    writeln('=== Slip Gaji ===');
    writeln('Gaji Pokok        : Rp ', gaji_pokok:0:2);
    writeln('Jumlah Hari Hadir : ', hari_hadir);
    writeln('Jumlah Jam lembur : ',jam_lembur);
    writeln('Uang Makan        : Rp ', uang_makan:0:2);
    writeln('Uang Lembur       : Rp ',upah_lembur:0:2);
    writeln('Bonus Kehadiran   : Rp ', bonus_kehadiran);
    writeln('Potongan BPJS     : Rp ', pot_bpjs:0:2);
    writeln('----------------------------------');
    writeln('Total Gaji Bersih : Rp ', gaji_bersih:0:2);
    readln;
end.
