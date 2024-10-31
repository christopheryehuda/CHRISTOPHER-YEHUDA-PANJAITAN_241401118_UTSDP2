uses crt;
var
  n, i, j: integer;
  prima: boolean;

begin
  clrscr;
  write('Masukkan nilai n: ');
  readln(n);
  
  write('Bilangan prima antara 1 dan ', n, ' adalah: ');

  for i := 2 to n do
  begin
    prima := true;
    
    for j := 2 to trunc(Sqrt(i)) do
    begin
      if (i mod j = 0) then
      begin
        prima := false;
        break;
      end;
    end;

    if prima then
    begin
      write(i);
      if i < n then
        write(', ');
    end;
  end;

  writeln;
end.
