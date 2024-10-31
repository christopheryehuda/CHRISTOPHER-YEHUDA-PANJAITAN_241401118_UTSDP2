uses crt;
var
  nama, hari: string;
  produk: array[1..10] of string;
  harga: array[1..10] of real;
  jumlah: array[1..10] of integer;
  i, n, poin: integer;
  total, diskon, pembayaran, totalDiskon: real;
  lanjut: char;

begin
  clrscr;
  write('Nama Anggota: ');
  readln(nama);
  
  write('Hari: ');
  readln(hari);

  n := 0;
  repeat
    n := n + 1;
    write('Produk ke-', n, ': ');
    readln(produk[n]);
    if produk[n] <> '' then
    begin
      write('Harga ', produk[n], ': Rp');
      readln(harga[n]);
      write('Jumlah ', produk[n], ': ');
      readln(jumlah[n]);
    end;

    if n < 10 then
    begin
      write('Apakah Anda ingin memasukkan produk lagi? (y/n): ');
      readln(lanjut);
      if (lanjut = 'n') or (lanjut = 'N') then
        break;
    end;

  until (n = 10) or (produk[n] = '');

  total := 0;
  for i := 1 to n do
  begin
    total := total + (harga[i] * jumlah[i]);
  end;


  diskon := 0;
  if hari = 'Senin' then
    diskon := 10
  else if hari = 'Selasa' then
    diskon := 5
  else if hari = 'Rabu' then
    diskon := 30
  else if hari = 'Kamis' then
    diskon := 8;
  
  
  diskon := diskon + 10;

 
  totalDiskon := total * (diskon / 100);
  pembayaran := total - totalDiskon;

  poin := trunc(pembayaran / 50000);

  writeln('Total: Rp', total:0:2);
  writeln('Diskon: ', diskon:0:0, '%');
  writeln('Pembayaran: Rp', pembayaran:0:2);
  writeln('Poin: ', poin);

  readln;
end.

