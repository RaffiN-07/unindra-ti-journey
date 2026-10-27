program TarifParkir;

uses crt;

var
    jenis_kendaraan : string;
    lama_parkir : integer;
    tarif_parkir : longint;

begin
    clrscr;

    write('Jenis Kendaraan: ');
    readln(jenis_kendaraan);
    write('Lama Parkir (Jam): ');
    readln(lama_parkir);

    if ((jenis_kendaraan = 'Motor') or (jenis_kendaraan = 'motor')) then
        begin
            if (lama_parkir <= 2) then
                begin
                    tarif_parkir := 3000;
                end
            else
                begin
                    tarif_parkir := 3000 + 1000 * (lama_parkir - 2);
                end;

        end
    else if ((jenis_kendaraan = 'Mobil') or (jenis_kendaraan = 'mobil')) then
        begin
            if (lama_parkir <= 2) then
                begin
                    tarif_parkir := 5000;
                end
            else
                begin
                    tarif_parkir := 5000 + 2000 * (lama_parkir - 2);
                end;
        end
    else
        begin
            writeln('Jenis Kendaraan tidak valid!');
        end;

    writeln('Tarif Parkir: ', tarif_parkir);

    readln;
end.