program Penjumlahan_dan_pengurangan_matriks_ordo_sama;
uses crt;
var
m,n,o:array [1..100,1..100] of integer;
i,j,k,l:integer;
pilih:integer;
begin
clrscr;
Write('Pilih 1 untuk penjumlahan matrix, pilih 2 untuk pengurangan matrix. Masukan pilihan anda : ');readln(pilih);
clrscr;
write('Masukan Ordo matriks : ');readln(k);
l:=k;
for i:=1 to k do
for j:=1 to l do
begin
write('Elemen A[',i,',',j,'] : ');
readln(m[i,j]);
end;
writeln;
for i:=1 to k do
for j:=1 to l do
begin
write('Elemen B[',i,',',j,'] : ');
readln(n[i,j]);
end;
case pilih of
1:
begin
for i:=1 to k do
for j:=1 to l do
o[i,j]:=m[i,j]+n[i,j];
writeln;
writeln;
writeln('Hasil dari penjumlahan Matrix M dengan Matrix N adalah : ');
Writeln;
for i:=1 to k do
begin
for j:=1 to l do
write(o[i,j],' ');
writeln;
end;
writeln;
readln;
end;
2:
begin
for i:=1 to k do
for j:=1 to l do
o[i,j]:=m[i,j]-n[i,j];
writeln;
writeln;
writeln('Hasil dari pengurangan Matrix M dengan Matrix N adalah : ');
writeln;
for i:=1 to k do
begin
for j:=1 to l do
write(o[i,j],' ');
writeln;
end;
writeln;
readln;
end;
end;
end.