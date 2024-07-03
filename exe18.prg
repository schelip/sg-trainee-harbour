clear

nContador := 1
nColuna   := 1

@ 00,00 to 04,30

while (nContador <= 10)
    @ 01,nColuna say LTrim( Str( nContador ) )
    nContador++
    nColuna := nColuna + 3
enddo

nContador := 10
nColuna     := 1
while (nContador >= 1)
    @ 03,nColuna say LTrim( Str( nContador ) )
    nContador--
    nColuna := nColuna + 3
enddo
