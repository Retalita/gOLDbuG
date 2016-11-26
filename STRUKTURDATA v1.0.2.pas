program struktur_data;
uses    crt;
label   menusumber,menucon,menucat,bab1array;
type
        TArray = array[1..10] of integer;{pedeklarasian array pada tipe data}
var
        a: Tarray;{variable a mempunyai tipe data yang di buat di atas}
        b: array [1..7] of string =('Senin','Selasa','Rabu','Kamis','Jumat','Sabtu','Minggu');{pendefinisian array secara langsung (modul hal 1)}
        array2d, ar0pr1, ar0pr2, ar0pr3 : array [1..2,1..2] of integer;

        pilihanmenusumber,
        pilihanmenucon,
        pilihanmenucat,
        pilihanarray ,i ,j : integer;
begin
 menusumber:
 textbackground(1);
 clrscr;
 textcolor(15);
 writeln(' Struktur Data');
 writeln;
 writeln(' Sumber Materi');
 writeln(' =============');
 writeln;
 writeln(' -= Menu =-');
 writeln('   ======');
 writeln(' [1] Contoh-Contoh Dibuku Modul');
 writeln(' [2] Catatan Dosen');
 writeln(' [0] Exit');
 writeln;
 write(' Masukan Nomer Menu : ');
 readln(pilihanmenusumber);
 // case of dari sumber materi
 case pilihanmenusumber of
 1: begin
        menucon:
        textbackground(1);
        clrscr;
        textcolor(15);
        writeln(' Contoh-Contoh Dibuku Modul');
        writeln(' ===========================');
        writeln;
        writeln(' -= Menu =-');
        writeln('    ====');
        writeln(' [1] Bab 1 . Array');
        writeln(' [2] Bab 2 . Record');
        writeln(' [3] Bab 3 . Pointer');
        writeln(' [4] Bab 4 . Tipe Berkas');
        writeln(' [5] Bab 5 . Linked List');
        writeln(' [6] Bab 6 . Stack Atau Tumpukan');
        writeln(' [7] Bab 7 . Queue Atau Antrian');
        writeln(' [9] Kembali');
        writeln(' [0] Exit');
        writeln;
        write(' Masukan Nomer Menu : ');
        readln(pilihanmenucon);
        // case of dari contoh-contoh dibuku modul
        case pilihanmenucon of
        1: begin
                bab1array:
                textbackground(1);
                clrscr;
                textcolor(15);
                writeln('  Bab 1 . Array');
                writeln(' ==============');
                writeln(' [1] Program 1-1 Deklarasi dan definisi array secara sederhana');
                writeln(' [2] Program 1-2 Pendefinisian Array Menggunakan Perintah Pengulangan');
                writeln(' [3] Program 1-3 Pendeklarasian Array Dua Dimensi');
                writeln(' [4] Program 1-4 Operasi Matriks');
                writeln(' [9] Kembali');
                writeln(' [0] Exit');
                writeln;
                write  (' Input Nomer Menu : ');
                readln (pilihanarray);
                // case of dari bab 1 . array
                case pilihanarray of
                1: begin
                        textbackground(0);
                        clrscr;
                        textcolor(10);
                        writeln(' Contoh 1 : Deklarasi Dan Definisi Array Secara Sederhana (Hal.2)');
                        writeln;
                        writeln(' uses crt;');
                        writeln(' type');
                        writeln('       TArray = array[1..10] of integer;   {pedeklarasian array pada tipe data}');
                        writeln(' var');
                        writeln('       a: Tarray;   {variable a mempunyai tipe data yang di buat di atas}');
                        writeln('       b: array[1..7] of string =(''Senin'',''Selasa'',''Rabu'',''Kamis'',''Jumat'',''Sabt');
                        writeln('       u'',''Minggu'');   {pendefinisian array secara langsung (modul hal 1)}');
                        writeln(' begin');
                        writeln(' clrscr;');
                        writeln('       a[1] := 10;   {nilai dari indeks a[1] ditetapkan yaitu 10}');
                        writeln('       a[2] := 35;   {nilai dari indeks a[2] ditetapkan yaitu 35}');
                        writeln('       writeln(b[2]  {menampilkan nilai dari indeks b[2]},a[1] {menampilkan nil');
                        writeln('       ai dari indeks a[1]}:5 {jarak spasi dari tampilan pertama dengan kedua});');
                        writeln(' readln;');
                        writeln(' end.');
                        readkey; //readln diganti readkey... lihat perbedaannya
                        writeln; // ditambah writeln agar turun satu baris
                        textcolor(14);
                        writeln(' Output');
                        writeln(' ======');
                        // Programnya
                        a[1] := 10;
                        a[2] := 35;
                        writeln(' ',b[2], a[1]:5);
                        readkey; // readln diganti readkey
                        goto bab1array;
                   end;
                2: begin
                        textbackground(0);
                        clrscr;
                        textcolor(10);
                        writeln(' Contoh 2 : Pendifinisian Array Menggunakan Perintah Pengulangan;');
                        writeln;
                        writeln(' uses crt;');
                        writeln(' type');
                        writeln('      TArray = array[1..10] of integer;{pedeklarasian array pada tipe data}');
                        writeln(' var');
                        writeln('      a: Tarray;{variable a mempunyai tipe data yang di buat di atas}');
                        writeln('      b: array[1..7] of string =(''Senin'',''Selasa'',''Rabu'',''Kamis'',''Jumat'',''Sab'
                               +'         tu'',''Minggu''); {pendefinisian array secara langsung (modul hal 1)}');
                        writeln('      i: integer;');
                        readkey; //readln diganti readkey
                        writeln(' begin');
                        writeln(' clrscr;');
                        writeln('        for i := 1 to high(a) do');
                        writeln('        begin');
                        writeln('                write(''Masukan Elemen Array ke-'',i,''= '');');
                        writeln('                readln(a[i]);');
                        writeln('        end;');
                        writeln;
                        writeln('        for i := 1 to high(a) do');
                        writeln('                write(a[i]:3);');
                        writeln('        writeln;');
                        writeln;
                        writeln('        for i := 1 to high(b) do');
                        writeln('                writeln('',b[i]);');
                        writeln('        readln;');
                        writeln(' end.');
                        readkey; //readln diganti readkey
                        writeln;
                        textcolor(14);
                        writeln(' Output');
                        writeln(' ======');
                        for i := 1 to high(a) do
                        begin
                        write(' Masukan Elemen Array ke-',i,' = ');
                        readln(a[i]);
                        end;
                        writeln;
                        for i := 1 to high(a) do
                        write(a[i]:3);
                        writeln;
                        writeln;
                        for i := 1 to high(b) do
                        writeln(' ',b[i]);
                        writeln;
                        readkey;
                        goto bab1array;
                   end;
                3: begin
                        textbackground(0);
                        clrscr;
                        textcolor(10);
                        writeln(' Contoh 1 : Pendeklarasian Dan Definisi Array Dua Dimensi;');
                        writeln(' uses    crt;');
                        writeln(' var     array2d: array[1..2,1..2] of integer;');
                        writeln('         i, j: integer;');
                        writeln(' begin');
                        writeln(' clrscr;');
                        writeln('         for i := 1 to high(array2d) do');
                        writeln('         for j := 1 to high(array2d[i]) do');
                        writeln('         begin');
                        writeln('                 write('' Masukan Elemen Baris['',i,''] Kolom['',j,''] = '');');
                        writeln('                 readln(array2d[i,j]);');
                        writeln('         end;');
                        writeln;
                        writeln('         for i := 1 to high(array2d) do');
                        writeln('         begin');
                        writeln('                 for j := 1 to high(array2d[i]) do');
                        writeln('                         write(array2d[i,j]:3);');
                        writeln('         writeln;');
                        writeln('         end;');
                        writeln(' readln;');
                        writeln(' end.');
                        readkey;
                        writeln;
                        textcolor(14);
                        writeln(' Output');
                        writeln(' ======');
                        for i := 1 to high(array2d) do
                        for j := 1 to high(array2d[i]) do
                        begin
                                write(' Masukan Elemen Baris[',i,'] Kolom[',j,'] = ');
                                readln(array2d[i,j]);
                        end;
                        writeln;
                        for i := 1 to high(array2d) do
                        begin
                        for j := 1 to high(array2d[i]) do
                                write(array2d[i,j]:3);
                        writeln;
                        end;
                        readkey;
                        goto bab1array;
                   end;
                4: begin
                        textbackground(0);
                        clrscr;
                        textcolor(10);
                        writeln(' Contoh 2: Operasi Matriks Penjumlahan;');
                        writeln(' uses    crt;');
                        writeln(' var     ar0pr1, ar0pr2, ar0pr3: array[1..2,1..2]of integer;');
                        writeln('         i, j: integer;');
                        writeln(' begin');
                        writeln(' clrscr;');
                        writeln('         for i := 1 to high(ar0pr1) do');
                        writeln('                 for j := 1 to high(ar0pr1[i]) do');
                        writeln('                 begin');
                        writeln('                 write('' Masukan elemen baris['',i,''] kolom['',j,''] = '');');
                        writeln('                 readln(ar0pr1[i,j]);');
                        writeln('                 end;');
                        writeln('         writeln; //next');
                        readkey;
                        writeln('         for i := 1 to high(ar0pr2) do');
                        writeln('                 for j := 1 to high(ar0pr2[i]) do');
                        writeln('                 begin');
                        writeln('                 write('' Masukan elemen baris['',i,''] kolom['',j,''] = '');');
                        writeln('                 readln(ar0pr2[i,j]);');
                        writeln('                 end;');
                        writeln('                 writeln;');
                        writeln('                 writeln('' Elemen matrik operand 1 adalah'');');
                        writeln('                 for i := 1 to high(ar0pr1) do');
                        writeln('                 begin');
                        writeln('                         for j := 1 to high(ar0pr1[i]) do');
                        writeln('                         write(ar0pr1[i,j]:3);');
                        writeln('                         writeln;');
                        writeln('                 end;');
                        writeln('                 writeln; //next');
                        readkey;
                        writeln('                 writeln('' Elemen matrik operand 2 adalah'');');
                        writeln('                 for i := 1 to high(ar0pr2) do');
                        writeln('                 begin');
                        writeln('                         for j := 1 to high(ar0pr2[i]) do');
                        writeln('                         write(ar0pr2[i,j]:3);');
                        writeln('                         writeln;');
                        writeln('                 end;');
                        writeln('                 writeln; //next');
                        readkey;
                        writeln('                 writeln('' Hasil penjumlahannya adalah '');');
                        writeln('                 for i := 1 to high(ar0pr3) do');
                        writeln('                 for j := 1 to high(ar0pr3[i]) do');
                        writeln('                         ar0pr3[i,j] := ar0pr1[i,j] + ar0pr2[i,j];');
                        writeln('                 for i := 1 to high(ar0pr3) do');
                        writeln('                 begin');
                        writeln('                         for j := 1 to high(ar0pr3[i]) do');
                        writeln('                         write(ar0pr3[i,j]:3);');
                        writeln('                         writeln;');
                        writeln('                 end;');
                        writeln(' readln;');
                        writeln(' end.');
                        readkey;
                        writeln;
                        textcolor(14);
                        writeln(' Output');
                        writeln(' ======');
                        for i := 1 to high(ar0pr1) do
                        for j := 1 to high(ar0pr1[i]) do
                        begin
                        write(' Masukan elemen baris[',i,'] kolom[',j,'] = ');
                        readln(ar0pr1[i,j]);
                        end;
                        writeln;
                        for i := 1 to high(ar0pr2) do
                        for j := 1 to high(ar0pr2[i]) do
                        begin
                        write(' Masukan elemen baris[',i,'] kolom[',j,'] = ');
                        readln(ar0pr2[i,j]);
                        end;
                        writeln;
                        writeln(' Elemen matrik operand 1 adalah');
                        for i := 1 to high(ar0pr1) do
                        begin
                                for j := 1 to high(ar0pr1[i]) do
                                write(ar0pr1[i,j]:3);
                                writeln;
                        end;
                        writeln;
                        writeln(' Elemen matrik operand 2 adalah');
                        for i := 1 to high(ar0pr2) do
                        begin
                                for j := 1 to high(ar0pr2[i]) do
                                write(ar0pr2[i,j]:3);
                                writeln
                        end;
                        writeln;
                        writeln(' Hasil penjumlahannya adalah ');
                        for i := 1 to high(ar0pr3) do
                        for j := 1 to high(ar0pr3[i]) do
                        ar0pr3[i,j] := ar0pr1[i,j] + ar0pr2[i,j];
                        for i := 1 to high(ar0pr3) do
                        begin
                                for j := 1 to high(ar0pr3[i]) do
                                write(ar0pr3[i,j]:3);
                                writeln;
                        end;
                        readkey;
                        goto bab1array;
                   end;
                9: begin
                        goto menucon;
                   end;
                0: begin
                        halt;
                   end;
                   else
                        writeln;
                        writeln(' Masukan Anda Salah !!!');
                        readkey;
                        goto bab1array;
                   end;
           end;
        9: begin
                goto menusumber;
           end;
        0: begin
                halt;
           end;
           else
           writeln;
           writeln(' Masukan Anda Salah !!!');
           readkey;
           goto menucon;
        end;
    end;
 2: begin
        menucat:
        textbackground(1);
        clrscr;
        textcolor(15);
        writeln(' Catatan Dosen');
        writeln(' =============');
        writeln;
        writeln(' -= Menu =-');
        writeln('    ====');
        writeln(' [1] Pertemuan 1');
        writeln(' [2] Pertemuan 2');
        writeln(' [3] Pertemuan 3');
        writeln(' [4] Pertemuan 4');
        writeln(' [5] Pertemuan 5');
        writeln(' [6] Pertemuan 6');
        writeln(' [7] Pertemuan 7');
        writeln(' [9] Kembali');
        writeln(' [0] Exit');
        writeln;
        write(' Masukan Nomor Menu : ');
        readln(pilihanmenucat);
        case pilihanmenucat of
        9: begin
                goto menusumber;
           end;
        0: begin
                halt;
           end;
           else
                writeln;
                writeln(' Masukan Anda Salah !!!');
                readkey;
                goto menucat;
           end;
    end;
 0: begin
        exit; // ganti exit ternyata sama apa bedanya yak O.o
    end;
    else
        writeln;
        writeln(' Masukan Anda Salah !!!');
        readkey;
        goto menusumber;
end;
readln;
end.
