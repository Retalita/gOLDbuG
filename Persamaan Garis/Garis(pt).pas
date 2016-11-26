uses crt, Graph;
var
pilihan2, pilihan : char;
x1,x2,y1,y2,a,b,xa,xb,ya,yb:integer;
grDriver: Integer;
grMode: Integer;
ErrCode: Integer;
skala:integer;
begin
clrscr;
writeln('yang ingin anda proses');
writeln(' 1 = translasi garis');
writeln(' 2 = refleksi garis');
writeln(' 3 = dilatasi garis ');
readln(pilihan);
if pilihan = '1' then
begin
write('masukkan x1 = ');readln(x1);
write('masukkan y1 = ');readln(y1);
write('masukkan x2 = ');readln(x2);
write('masukkan y2 = ');readln(y2);
writeln('masukkan titik translasi (a,b)');
write('a = ');readln(a);
write('b = ');readln(b);
xa:=x1+a; xb:=x2+a;
ya:=y1+b; yb:=y2+b;
end
else
if pilihan = '2' then
begin
writeln('1 = garis terhadap sumbu y ');
writeln(' 2 = garis terhadap sumbu x ');
readln(pilihan2);
writeln(' titik yang akan di refleksikan ');
write(' x1 = ');readln(x1);
write(' y1 = ');readln(y1);
write(' x2 = ');readln(x2);
write(' y2 = ');readln(y2);
if pilihan2 = '1' then
begin
xa:=(-1*x1);
xb:=(-1*x2);
ya:=y1; yb:=y1;
end
else
if pilihan2 = '2' then
begin
ya:=(-1*y1); xa:=x1;
yb:=(-1*y2); xb:=x2;
end;
end
else
if pilihan = '3' then
begin
write('masukkan x1 = ');readln(x1);
write('masukkan y1 = ');readln(y1);
writeln(' 1 = terhadap titik pusat');
write(' 2 = terhadap titik (a,b)'); readln(pilihan2);
write('masukkan faktor skala = '); readln(skala);
if pilihan2 = '1' then
begin
x2:=skala*x1;
y2:=skala*y1;
end;
if pilihan2 = '2' then
begin
write('masukkan a = ');readln(xa);
write('masukkan b = ');readln(xb);
x2:=xa+(skala*(x1-xa));
y2:=yb+(skala*(y1-yb));
end;
end;
grDriver := Detect;
InitGraph(grDriver, grMode,' ');
ErrCode := GraphResult;
if ErrCode = grOk then
begin  { Do graphics }
Line(320, 0, 320, 640);
Line(0, 230, 640, 230);
if pilihan = '1' then
begin
line((x1+320),(-y1+230),(x2+320),(-y2+230));
line((xa+320),(-ya+230),(xb+320),(-yb+230));
end
else
if pilihan = '2' then
begin
line((x1+320),(-y1+230),(x2+320),(-y2+230));
line((xa+320),(-ya+230),(xb+320),(-yb+230));
end
else
if pilihan = '3' then
begin
line((x1+320),(-y1+230),(x2+320),(-y2+230));
end;
Readln;
CloseGraph;
end
else
Writeln('Graphics error:', GraphErrorMsg(ErrCode));
end.