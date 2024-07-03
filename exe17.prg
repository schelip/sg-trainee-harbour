clear

cPalavra   := Space( 30 )
cInvertida := ""
nLen       := 0
nContador  := 0

@ 00,00 to 05,50

@ 01,03 say "Palavra:"

@ 01,12 get cPalavra
read

cPalavra := AllTrim( cPalavra )
nLen     := Len( cPalavra )

while (nContador < nLen)
    cInvertida += SubStr( cPalavra, nLen - nContador, 1 )
    nContador++
enddo

@ 02,01 say "Invertida: " + cInvertida

@ 04,01 say "Pressione alguma tecla..."
InKey( 0 )
