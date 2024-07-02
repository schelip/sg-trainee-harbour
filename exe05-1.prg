clear

nA := 0
nB := 0

@ 01,01 say "Numero A:"
@ 02,01 say "Numero B:"

@ 01,11 get nA
@ 02,11 get nB
read

@ 04,01 say "Antes da troca:"
@ 05,01 say "A:" + Str(nA)
@ 06,01 say "B:" + Str(nB)

nTemp := nA
nA := nB
nB := nTemp

@ 07,01 say "Depois da troca:"
@ 08,01 say "A:" + Str(nA)
@ 09,01 say "B:" + Str(nB)