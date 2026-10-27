program KomisiPenjualan;
uses crt;
var
    nama_karyawan : string;
    nilai_penjualan, komisi_penjualan : real;
begin
    clrscr;
    write('Nama Karyawan: ');
    readln(nama_karyawan);
    write('Nilai Penjualan: ');
    readln(nilai_penjualan);
    komisi_penjualan := nilai_penjualan * 0.05;
    writeln('Komisi yang didapat oleh ',nama_karyawan, ' adalah sebesar: Rp', komisi_penjualan:0:0);
    readln;
end.