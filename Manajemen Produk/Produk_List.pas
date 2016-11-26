Program produk_barang;
uses crt ;

type Produk = Record

     Kode  : String[3] ;

     Nama  : String[30] ;

     Harga : Longint ;

     End;

Var

   fPro : File of Produk ;

   ftemp: File of Produk ;

   rPro : Produk ;

   lg   : Char ;

   i    : byte ;

   xkode: string[8] ;

   ketemu: boolean  ;

   pil   : byte ;



procedure openproduk ;

begin

     Assign(fpro, 'produk.dat') ;

     {$I-} Reset(fpro) ;

     {$I+}if IOResult<>0 then Rewrite(fpro) ;

end;



procedure inputproduk ;

begin

     OpenProduk ;

     Repeat

           clrscr;

           GotoXY(40,5) ; Write('Input Data Produk')  ;

           GotoXY(40,6) ; Write('-----------------------------')  ;

           GotoXY(40,7) ; Write('Kode  : ')  ; Readln(rpro.Kode) ;

           xkode :=rpro.Kode;

           i := 1;

           seek(fpro,0) ; ketemu := false ;

           while not eof(fpro) do

           begin

               seek(fpro,i-1); read (fpro, rpro) ;

               if rpro.kode = xkode then

               begin

                    ketemu := true ;

                    GotoXY(40,8) ; Write('Nama  : ',rpro.Nama) ;

                    GotoXY(40,9) ; Write('Harga : ',rpro.Harga);

                    GotoXY(40,10); Write('-----------------------------')  ;

                    GotoXY(40,11); Write('Data Sudah Ada')  ;

               end;

               inc(i);

           end;



           if not ketemu then

           begin

                rpro.Kode := xkode ;

                GotoXY(40,8) ; Write('Nama  : ')  ; Readln(rpro.Nama) ;

                GotoXY(40,9) ; Write('Harga : ')  ; Readln(rpro.Harga) ;

                GotoXY(40,10); Write('-----------------------------')  ;

                Seek(fpro, Filesize(fpro)) ;

                write(fPro, rpro) ;

           end;

           GotoXY(40,12); Write('Input Lagi [Y/T] : ')  ; Readln(lg) ;

     Until Upcase(Lg)='T' ;

     close(fPro) ;

end;



procedure hapusproduk ;

begin

     Assign(ftemp, 'temp.dat') ;

     {$I-} Reset(ftemp) ;

     {$I+} if ioresult<>0 then Rewrite(ftemp) ;

     OpenProduk ;



     Rewrite(ftemp) ;

     Repeat

           GotoXY(40,5) ; Write('Input Data Produk yang dihapus');

           GotoXY(40,6) ; Write('-----------------------------') ;

           GotoXY(40,7) ; Write('Kode  : ')  ; Readln(rpro.Kode) ;

           xkode :=rpro.Kode;

           i := 1;

           seek(fpro,0) ; ketemu := false ;

           while not eof(fpro) do

           begin

               seek(fpro,i-1); read (fpro, rpro) ;

               if rpro.kode = xkode then

               begin

                    ketemu := true ;

               end

               else

               begin

                    seek(ftemp,filesize(ftemp));

                    write(ftemp,rpro) ;

               end;

               inc(i);

           end;

           i := 1;

           rewrite(fpro) ;

           seek(ftemp,0) ;

           while not eof(ftemp) do

           begin

               seek(ftemp,i-1); read (ftemp, rpro) ;



               seek(fpro,filesize(fpro));

               write(fpro,rpro) ;

               inc(i);

           end;



           if not ketemu then

           begin

                GotoXY(40,8) ; Write('Data ini tidak ada')

           end

           else

           begin

                GotoXY(40,8) ; Write('Data ini sudah di hapus')

           end;

           GotoXY(40,12); Write('Input Lagi [Y/T] : ')  ; Readln(lg) ;

     Until Upcase(Lg)='T' ;

     close(ftemp) ;

     close(fPro) ;

end;





procedure outputProduk;

begin

     OpenProduk ;

     i :=1 ;

     Gotoxy(30, 4) ; Write('Informasi PRODUK') ;

     Gotoxy(30, 5) ; Write('-----------------------------------------') ;

     Gotoxy(30, 6) ; Write(' No  Kode   Nama                Harga    ') ;

     Gotoxy(30, 7) ; Write('-----------------------------------------') ;
     seek(fpro, 0) ;

     while not eof(fpro) do

     begin

        seek(fpro, i-1) ;

        read(fpro, rpro) ;

        Gotoxy(32, 7+i) ; Write( i ) ;

        Gotoxy(35, 7+i) ; Write( rpro.Kode ) ;

        Gotoxy(42, 7+i) ; Write( rpro.Nama)  ;

        Gotoxy(60, 7+i) ; Write( rpro.Harga:9) ;

        inc (i) ;

     end;

     Gotoxy(30, 7+i) ; Write('-----------------------------------------') ;

     Gotoxy(30, 8+i) ; Write('press any key to continue...') ;

     Close(fPro) ;

     Repeat Until Keypressed;

end;



procedure menu ;

begin

     clrscr ;

     Gotoxy(2, 3) ; Write('------------------------') ;

     Gotoxy(2, 4) ; Write(' Menu Utama') ;

     Gotoxy(2, 5) ; Write('------------------------') ;

     Gotoxy(2, 6) ; Write(' 1. Input Produk') ;

     Gotoxy(2, 7) ; Write(' 2. Hapus Produk') ;

     Gotoxy(2, 8) ; Write(' 3. Informasi Produk') ;

     Gotoxy(2, 9) ; Write(' 4. Keluar') ;

     Gotoxy(2,10) ; Write('------------------------') ;

     Gotoxy(2,11) ; Write(' Pilihan : ') ; readln(pil);

end;



begin

     pil := 0 ;

     while pil<>4 do

     begin

          menu ;

          case pil of

               1 : inputproduk ;

               2 : hapusproduk ;

               3 : outputproduk ;

          end;

     end;

end.

