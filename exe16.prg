clear

cNome  := space(10)
nQuant := 0

@ 01,01 say "Nome:"
@ 02,01 say "Quantas vezes imprimir:"

@ 01,07 get cNome
@ 02,25 get nQuant
read

for nCounter := 1 to nQuant
    nRow = 3 + nCounter
    @ nRow, 01 say ltrim(str(nCounter)) + ". " + cNome
next
