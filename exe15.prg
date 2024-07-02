clear

cNome := space(10)

@ 01,01 say "Nome:"

@ 01,07 get cNome
read

for nCounter := 0 to 9
    nCol := 3 + nCounter
    @ nCol, 01 say str(nCounter + 1) + ". " + cNome
next
