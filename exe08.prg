set date to british
set epoch to 1940
set scoreboard off

clear

cNomeCliente      := Space( 20 )
cEnderecoCliente  := Space( 20 )
nIdadeCliente     := 0
dDataAtual        := Date()

cDescProduto1     := Space( 31 )
nValorProduto1    := 0
nQuantProduto1    := 0
cDescProduto2     := Space( 31 )
nValorProduto2    := 0
nQuantProduto2    := 0
cDescProduto3     := Space( 31 )
nValorProduto3    := 0
nQuantProduto3    := 0

nTotal            := 0

@ 00,00 to 24,79 double

@ 01,33 say "SG CONVENIENCIA"

@ 02,01 to 07,50 double
@ 05,22 to 06,22
@ 05,43 to 06,43
@ 04,02 to 04,49

@ 03,03 say "CADASTRO CLIENTE"

@ 05,02 say "Nome:"
@ 05,23 say "Endereco:"
@ 05,44 say "Idade:"

@ 06,02 get cNomeCliente                      valid !Empty( cNomeCliente )
@ 06,23 get cEnderecoCliente                  valid !Empty( cEnderecoCliente )
@ 06,44 get nIdadeCliente    picture "   999" range 1,130

@ 08,01 to 23,50 double
@ 10,02 to 10,49
@ 12,02 to 12,32
@ 11,33 to 22,33
@ 12,34 to 12,42
@ 11,43 to 22,43
@ 12,44 to 12,49

@ 09,03 say "DETALHES DA COMPRA"

@ 11,02 say "PRODUTO"
@ 11,34 say "VALOR"
@ 13,34 say "R$"
@ 14,34 say "R$"
@ 15,34 say "R$"
@ 11,44 say "QUANT."

@ 13,02 get cDescProduto1                      valid !Empty( cDescProduto1 )
@ 13,37 get nValorProduto1 picture "@E 999.99" valid nValorProduto1 > 0
@ 13,44 get nQuantProduto1 picture "   999"    valid nQuantProduto1 > 0
@ 14,02 get cDescProduto2                      valid !Empty( cDescProduto2 )
@ 14,37 get nValorProduto2 picture "@E 999.99" valid nValorProduto2 > 0
@ 14,44 get nQuantProduto2 picture "   999"    valid nQuantProduto2 > 0
@ 15,02 get cDescProduto3                      valid !Empty( cDescProduto3 )
@ 15,37 get nValorProduto3 picture "@E 999.99" valid nValorProduto3 > 0
@ 15,44 get nQuantProduto3 picture "   999"    valid nQuantProduto3 > 0

//read
nTotal := nValorProduto1 * nQuantProduto1 + nValorProduto2 * nQuantProduto2 + nValorProduto3 * nQuantProduto3

@ 02,51 to 23,78 double
@ 04,52 to 04,77
@ 09,52 to 09,77

@ 03,53 say "NOTA FISCAL"

@ 06,52 say SubStr( AllTrim( cDescProduto1 ), 0, 10 )
@ 06,63 say Transform( nValorProduto1, "@E R$ 999.99" )
@ 06,73 say Transform( nValorProduto1, "@E x999" )
@ 07,52 say SubStr( AllTrim( cDescProduto2 ), 0, 10 )
@ 07,63 say Transform( nValorProduto2, "@E R$ 999.99" )
@ 07,73 say Transform( nValorProduto2, "@E x999" )
@ 08,52 say SubStr( AllTrim( cDescProduto3 ), 0, 10 )
@ 08,63 say Transform( nValorProduto3, "@E R$ 999.99" )
@ 08,73 say Transform( nValorProduto3, "@E x999" )

@ 10,56 say "TOTAL:"
@ 10,63 say Transform( nTotal, "@E R$ 999.99" )

@ 19,52 say Date()
@ 20,52 say cNomeCliente + ", " + Str(nIdadeCliente)
@ 21,52 say cEnderecoCliente


read

// @ 01,01 say "Quantidade Produto A (R$10,00):" 
//  @ 02,01 say "Quantidade Produto B (R$5,31):" 
// @ 03,01 say "Quantidade Produto C (R$20,00):" 

// @ 01,43 get nQuantA picture "99" color "W/N" valid !Empty( nQuantA )
// @ 02,43 get nQuantB picture "99"
// @ 03,43 get nQuantC picture "99"
// read

// nTotal = 10 * nQuantA + 5.31 * nQuantB + 20 * nQuantC

// @ 05,01 say "Conta do cliente = " + Str(nTotal)
