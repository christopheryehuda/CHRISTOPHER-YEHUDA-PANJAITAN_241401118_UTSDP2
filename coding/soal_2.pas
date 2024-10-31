uses crt;
var
  n, i, total: integer;
  angka: array of integer;
  ratarata: real;

begin
  clrscr;
  write('Masukkan jumlah angka (N): '); readln(n);
  
  setlength(angka, n);
  total := 0;

  for i := 0 to n - 1 do
  begin
    write('Angka ke-', i + 1, ': ');
    readln(angka[i]);
    total := total + angka[i];
  end;

  ratarata := total / n;

  writeln('Jumlah Total: ', total);
  Writeln('Rata-rata: ', ratarata:0:1);
end.
