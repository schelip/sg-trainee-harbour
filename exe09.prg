clear

cLetra   := Space(1)
dData    := Date()
nInteiro := 0
nDecimal := 0
cString  := Space(30)

@ 01,01 say "Informe uma letra:"
@ 02,01 say "Informe uma data:"
@ 03,01 say "Informe um inteiro:"
@ 04,01 say "Informe um decimal:"
@ 05,01 say "Informe uma string:"

@ 01,21 get cLetra
@ 02,21 get dData    picture "@E"
@ 03,21 get nInteiro picture "9999999"    range 0, 100 
@ 04,21 get nDecimal picture "@E 999.999" valid !Empty( nDecimal )
@ 05,21 get cString
read

@ 07,01 say "Letra informada:"
@ 08,01 say "Data informada:"
@ 09,01 say "Inteiro informado:"
@ 10,01 say "Decimal informado:"
@ 11,01 say "String informada:"

@ 07,20 say cLetra
@ 08,20 say dData pict "@E"
@ 09,20 say LTrim(Str(nInteiro))
@ 10,20 say LTrim(Transform(nDecimal, "@E"))
@ 11,20 say cString