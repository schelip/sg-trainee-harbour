clear

nContador := 10
nSoma     := 10

@ 00,00 to 03,40

while (nContador <= 50)
    nSoma := nSoma + nContador
    nContador++
enddo

@ 01,01 say "Soma total: " + LTrim( Str( nSoma ) )

@ 02,01 say "Pressione alguma tecla..."
InKey( 0 )