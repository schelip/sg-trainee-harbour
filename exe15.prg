clear

cNome     := Space( 25 )
nContador := 0
nColuna   := 0

@ 01,01 say "Nome:"

@ 01,07 get cNome
read

while (nContador < 10)
    nColuna := 3 + nContador
    @ nColuna,01 say cNome
    nContador++
enddo
