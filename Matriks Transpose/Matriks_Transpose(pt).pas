program dimensi;
uses    crt;
var     x:array[1..100,1..100]of integer;
        p,l,i,j,k:integer;
begin
        clrscr;
        writeln;
        gotoxy(75,5);write('Baris Matriknya = ');readln(p);
        gotoxy(75,6);write('Kolom Matriksnya = ');readln(l);
        writeln;
        for i:=1 to l do
        begin
        for j:=1 to p do
        begin
        clrscr;
        gotoxy(75,5);write('Masukan nilai elemen [',i,'][',j,'] : ');readln(x[i,j]);
        end;
        end;
        writeln;
        writeln;
        writeln('                                       Bentuk Matriknya : ');
        writeln;
        for i:=1 to l do
        begin
        write  ('                                                          ');
        for j:=1 to p do
        write(x[i,j],' ') ;
        writeln;
        end;
        readln;
        writeln('                                       Bentuk Matrik transposenya :');
        writeln;
        for i:=1 to p do
        begin
        write  ('                                                                   ');
        for j:=1 to l do
        write(x[j,i],' ') ;
        writeln;
        end;
        readln;
end.
