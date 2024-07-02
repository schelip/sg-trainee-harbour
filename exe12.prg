clear

nA := 0
nB := 0
nC := 0

@ 01,01 say "Numero A:"
@ 02,01 say "Numero B:"
@ 03,01 say "Numero C:"

@ 01,11 get nA
@ 02,11 get nB
@ 03,11 get nC
read

if (nA > nB)
    if (nA > nC)
        nMaior := nA
    else
        nMaior := nC
    endif
else
    if (nB > nC)
        nMaior := nB
    else
        nMaior := nC
    endif
endif

@ 05,01 say "Maior valor: " + LTrim(Str(nMaior))