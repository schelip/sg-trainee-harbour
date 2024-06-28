clear

nA := 2
nB := 3

@ 01,01 say "Antes da troca:"
@ 02,01 say "A:" + Str(nA)
@ 03,01 say "B:" + Str(nB)

nTemp := nA
nA := nB
nB := nTemp

@ 04,01 say "Antes da troca:"
@ 05,01 say "A:" + Str(nA)
@ 06,01 say "B:" + Str(nB)