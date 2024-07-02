clear

nQuantA := 0
nQuantB := 0
nQuantC := 0

@ 01,01 say "Quantidade Produto A (R$10,00):" 
@ 02,01 say "Quantidade Produto B (R$5,25):" 
@ 03,01 say "Quantidade Produto C (R$20,00):" 

@ 01,35 get nQuantA
@ 02,35 get nQuantB
@ 03,35 get nQuantC
read

nTotal = 10 * nQuantA + 5.25 * nQuantB + 20 * nQuantC

@ 05,01 say "Conta do cliente = " + Str(nTotal)
