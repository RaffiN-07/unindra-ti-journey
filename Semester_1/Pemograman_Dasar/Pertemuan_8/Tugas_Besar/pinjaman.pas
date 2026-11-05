program Pinjaman;

uses crt;

const
    RASIO_MAKS: real = 0.3;

var
    cicilan, harga, dp, penghasilan, tenor, persen_dp, bunga, pokok, total_bunga : real;
    status : string;



begin
    clrscr;
    write('Masukkan harga: ');
    readln(harga);
    write('Masukkan DP   : ');
    readln(dp);
    write('Masukkan Penghasilan: ');
    readln(penghasilan);
    write('Masukkan Tenor: ');
    readln(tenor);

    persen_dp := dp  / harga * 100;

    if persen_dp < 10 then
        begin
            writeln('DP kurang dari minimum');
        end
    else
        begin
            if persen_dp >= 20 then
                bunga := 5
            else
                bunga := 7;
            
            pokok := harga - dp;
            total_bunga := pokok * bunga / 100 * tenor;
            cicilan := pokok + total_bunga / tenor * 12;

            if cicilan <= penghasilan * RASIO_MAKS then
                status := 'Disetujui'
            else
                status := 'Ditolak';
            
            writeln('=== KETERANGAN ===');
            writeln('Cicilan Anda : Rp ', cicilan:0:2);
            writeln('Approval     : ', status);

        end;
    
    readln;
end.