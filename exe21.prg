set date to british
set epoch to 1940
set scoreboard off

clear

cNomeAtual := Space( 20 )
cNomeMagro := ''
cNomeGordo := ''
nPesoAtual := 0
nPesoMagro := 1000
nPesoGordo := 0
nContador  := 1

@ 00,00 to 05,50 double

@ 01,02 say "Lendo dados da pessoa:"
@ 02,01 to 02,49
@ 03,02 say "Nome:"
@ 04,02 say "Peso:"

@ 06,00 to 11,50 double
@ 07,02 say "Resultado"
@ 08,01 to 08,49
@ 09,02 say "Mais magro:"
@ 10,02 say "Mais gordo:"

while (nContador <= 6)
    @ 01,25 say nContador picture "9"

    @ 03,10 get cNomeAtual                          valid !Empty( cNomeAtual )
    @ 04,10 get nPesoAtual picture "@E 999.99 (Kg)" valid !Empty( nPesoAtual )
    read

    if (nPesoAtual < nPesoMagro)
        nPesoMagro := nPesoAtual
        cNomeMagro := cNomeAtual
    endif

    if (nPesoAtual > nPesoGordo)
        nPesoGordo := nPesoAtual
        cNomeGordo := cNomeAtual
    endif

    @ 09,14 say cNomeMagro
    @ 10,14 say cNomeGordo

    @ 09,35 say nPesoMagro picture "( 999.99 Kg )"
    @ 10,35 say nPesoGordo picture "( 999.99 Kg )"
    

    cNomeAtual := Space( 20 )
    nPesoAtual := 0
    nContador++
enddo

@ 12,01 say "Pressione alguma tecla..."
InKey( 0 )