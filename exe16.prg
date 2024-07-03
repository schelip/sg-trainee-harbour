clear

cNome     := Space( 30 )
nQuant    := 0
nContador := 0

@ 01,01 say "Nome:"
@ 02,01 say "Quantas vezes imprimir:"

@ 01,07 get cNome
@ 02,25 get nQuant valid nQuant > 0
read

while (nContador < nQuant)
    nLinha := 3 + nContador
    @ nLinha,01 say cNome
    nContador++
endDo
