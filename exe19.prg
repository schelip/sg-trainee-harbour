clear

nNumero   := 0
nContador := 1
nColuna   := 0

@ 00,00 to 16,50

@ 01,01 say "Numero:"

@ 01,10 get nNumero picture "99"
read

@ 03,01 say "Tabuada do " + LTrim( Str( nNumero ) ) + ":"

while (nContador <= 10)
    nColuna := 3 + nContador
    @ nColuna,01 say Transform( nContador, "99" ) + " x " + Transform( nNumero, "99" ) + " = " + Transform( nContador * nNumero, "9999" )
    nContador++
enddo

@ 15, 01 say "Pressione alguma tecla..."
InKey( 0 )
