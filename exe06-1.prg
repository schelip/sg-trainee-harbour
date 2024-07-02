clear

nA := 0
nB := 0
nC := 0

@ 01,01 say "Numero A:"
@ 02,01 say "Numero B:"
@ 03,01 say "Numero B:"

@ 01,11 get nA
@ 02,11 get nB
@ 03,11 get nC
read

nMedia = (nA + nB + nC) / 3

@ 05,01 say "Media: " + Str(nMedia)