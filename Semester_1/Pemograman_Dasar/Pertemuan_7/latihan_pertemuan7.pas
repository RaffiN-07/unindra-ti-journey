program BulanKeberapa;

uses crt;

var
  angka : integer;

begin
  clrscr;

  write('Input sebuah angka  antara 1 - 12: ');
  readln(angka);
  
  writeln('');

  case (angka) of
    1 : writeln('Bulan ke ', angka, ' adalah : Januari');
    2 : writeln('Bulan ke ', angka, ' adalah : Februari');
    3 : writeln('Bulan ke ', angka, ' adalah : Maret');
    4 : writeln('Bulan ke ', angka, ' adalah : April');
    5 : writeln('Bulan ke ', angka, ' adalah : Mei');
    6 : writeln('Bulan ke ', angka, ' adalah : Juni');
    7 : writeln('Bulan ke ', angka, ' adalah : Juli');
    8 : writeln('Bulan ke ', angka, ' adalah : Agustus');
    9 : writeln('Bulan ke ', angka, ' adalah : September');
    10 : writeln('Bulan ke ', angka, ' adalah : Oktober');
    11 : writeln('Bulan ke ', angka, ' adalah : November');
    12 : writeln('Bulan ke ', angka, ' adalah : Desember');
  else
    writeln('[!] Angka yang anda masukkan tidak valid!');
    writeln('Harap input angka antara 1 - 12');
  end;

  readln;
end.
