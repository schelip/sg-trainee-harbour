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

cDataExtenso      := ""
nTotal            := 0

@ 00,00 to 24,79 double // Box principal

@ 01,33 say "SG CONVENIENCIA" // Titulo

/* Cadastro de cliente ------------------------------------------------------ */
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


/* Detalhes da compra ------------------------------------------------------- */
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


/* Nota Fiscal -------------------------------------------------------------- */
read
nTotal := nValorProduto1 * nQuantProduto1
nTotal += nValorProduto2 * nQuantProduto2
nTotal += nValorProduto3 * nQuantProduto3

@ 02,51 to 23,78 double
@ 04,52 to 04,77
@ 08,52 to 08,77
@ 10,52 to 10,77
@ 16,52 to 16,77
@ 21,52 to 21,77

@ 03,53 say "NOTA FISCAL"

@ 05,52 say SubStr( AllTrim( cDescProduto1 ), 0, 10 )
@ 05,63 say Transform( nValorProduto1, "@E R$ 999.99" )
@ 05,73 say Transform( nQuantProduto1, "@E x999" )
@ 06,52 say SubStr( AllTrim( cDescProduto2 ), 0, 10 )
@ 06,63 say Transform( nValorProduto2, "@E R$ 999.99" )
@ 06,73 say Transform( nQuantProduto2, "@E x999" )
@ 07,52 say SubStr( AllTrim( cDescProduto3 ), 0, 10 )
@ 07,63 say Transform( nValorProduto3, "@E R$ 999.99" )
@ 07,73 say Transform( nQuantProduto3, "@E x999" )

@ 09,56 say "TOTAL:"
@ 09,63 say Transform( nTotal, "@E R$ 999.99" )

@ 11,59 to 11,64 double
@ 12,59 to 13,59 double
@ 13,59 to 13,64 double
@ 14,64 to 15,64 double
@ 15,59 to 15,64 double

@ 11,66 to 11,71 double
@ 12,66 to 15,66 double
@ 15,66 to 15,71 double
@ 13,71 to 14,71 double
@ 13,71 to 13,69 double

cDataExtenso := "Maringa, "
cDataExtenso += " " + AllTrim(Str(Day(dDataAtual)))

switch Month(dDataAtual)
    case 1
        cDataExtenso += "janeiro"
        exit
    case 2
        cDataExtenso += "fevereiro"
        exit
    case 3
        cDataExtenso += "marco"
        exit
    case 4
        cDataExtenso += "abril"
        exit
    case 5
        cDataExtenso += "maio"
        exit
    case 6
        cDataExtenso += "junho"
        exit
    case 7
        cDataExtenso += "julho"
        exit
    case 8
        cDataExtenso += "agosto"
        exit
    case 9
        cDataExtenso += "setembro"
        exit
    case 10
        cDataExtenso += "outubro"
        exit
    case 11
        cDataExtenso += "novembro"
        exit
    case 12
        cDataExtenso += "dezembro"
        exit
endswitch

cDataExtenso += " " + Transform(Year(dDataAtual), "9999")

switch DoW(dDataAtual)
    case 1
        cDiaExtenso := "Domingo"
        exit
    case 2
        cDiaExtenso := "Segunda-feira"
        exit
    case 3
        cDiaExtenso := "Terca-feira"
        exit
    case 4
        cDiaExtenso := "Quarta-feira"
        exit
    case 5
        cDiaExtenso := "Quinta-feira"
        exit
    case 6
        cDiaExtenso := "Sexta-feira"
        exit
    case 7
        cDiaExtenso := "Sabado"
        exit
endswitch

@ 17,52 say cDataExtenso
@ 18,52 say cDiaExtenso
@ 19,52 say AllTrim(cNomeCliente) + ", " + AllTrim(Str(nIdadeCliente))
@ 20,52 say cEnderecoCliente

@ 22,52 say "Obrigado pela compra!"