program golongan_karyawan;

uses crt;

var
  gol_karyawan, pend_karyawan : string;
  gaji_pokok, tunjangan, gaji : longint;

begin
  clrscr;
  //masukkan golongan dan pendidikan Karyawan
  write('Input Golongan Karyawan   : ');
  readln(gol_karyawan);
  write('Input Pendidikan Karyawan : ');
  readln(pend_karyawan);
  
  writeln();

  // percabangan untuk mengecek bagian golongan karyawan 
  if (gol_karyawan = 'A') or (gol_karyawan = 'a') then
    begin
      // percabangan untuk mengecek bagian pendidikan karyawan
      if (pend_karyawan = 'SMA') or (pend_karyawan = 'sma') then
        begin
          gaji_pokok := 3000000;
          tunjangan := 2000000;
          gaji := gaji_pokok + tunjangan;
          writeln('Gaji yang didapat adalah: Rp', gaji);
        end
      else if (pend_karyawan = 'S1') or (pend_karyawan = 's1') then
        begin
          gaji_pokok := 4000000;
          tunjangan := 2000000;
          gaji := gaji_pokok + tunjangan;
          writeln('Gaji yang didapat adalah: Rp', gaji);
        end
      else
        begin
          writeln('[!] Status Pendidikan Tidak Valid!');
        end;
    end

  else if (gol_karyawan = 'B') or (gol_karyawan = 'b') then
    begin
      if (pend_karyawan = 'SMA') or (pend_karyawan = 'sma') then
        begin
          gaji_pokok := 4000000;
          tunjangan := 3000000;
          gaji := gaji_pokok + tunjangan;
          writeln('Gaji yang didapat adalah: Rp', gaji);
        end
      else if (pend_karyawan = 'S1') or (pend_karyawan = 's1') then
        begin
          gaji_pokok := 6000000;
          tunjangan := 5000000;
          gaji := gaji_pokok + tunjangan;
          writeln('Gaji yang didapat adalah: Rp', gaji);
        end
      else
        begin
          writeln('[!] Status Pendidikan Tidak Valid!');
        end;
    end

  else
    begin
      writeln('[!] Status Golongan Tidak Valid!');
    end;
  readln;
end.


