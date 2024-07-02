clear

nNumeroA := 0
nNumeroB := 0

@ 01,01 say "Numero A:"
@ 02,01 say "Numero B:"

@ 01,11 get nNumeroA
@ 02,11 get nNumeroB
read

@ 04,01 say Str(nNumeroA)
@ 05,01 say Str(nNumeroB) + " *"
@ 06,01 say "-----------"
@ 07,01 say Str(nNumeroA * nNumeroB)
