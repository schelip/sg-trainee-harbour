set scoreboard off

clear

#define N_LARGURA_CELULA   9
#define N_ALTURA_CELULA    5
#define N_LARGURA_SIMBOLO  7
#define N_ALTURA_SIMBOLO   3
#define N_OFFSET_X_SIMBOLO (N_LARGURA_CELULA - N_LARGURA_SIMBOLO) / 2
#define N_OFFSET_Y_SIMBOLO (N_ALTURA_CELULA - N_ALTURA_SIMBOLO) / 2

aTabuleiro        := {{ , , }, { , , }, { , , }}
nColSelecionada   := 0
nLinhaSelecionada := 0

/* Desenhando tabuleiro ------------------------------------------------------*/
function desTabuleiro
    nYPrimeiraCol      := N_LARGURA_CELULA
    nYSegundaCol       := 2 * N_LARGURA_CELULA + 1
    nAlturaColunas     := 3 * N_ALTURA_CELULA + 1
    nXPrimeiraLinha    := N_ALTURA_CELULA
    nXSegundaLinha     := 2 * N_ALTURA_CELULA + 1
    nComprimentoLinhas := 3 * N_LARGURA_CELULA + 1

    @ 00, nYPrimeiraCol to nAlturaColunas, nYPrimeiraCol double
    @ 00, nYSegundaCol  to nAlturaColunas, nYSegundaCol  double

    @ nXPrimeiraLinha, 00 to nXPrimeiraLinha, nComprimentoLinhas double
    @ nXSegundaLinha , 00 to nXSegundaLinha,  nComprimentoLinhas double
return

/* Desenha X em determinada célula*/
function desX(nCol, nLinha)
    local nXInicio := nCol * N_LARGURA_CELULA + nCol + N_OFFSET_X_SIMBOLO
    local nYInicio := nLinha * N_ALTURA_CELULA + nLinha + N_OFFSET_Y_SIMBOLO
    local nXFinal  := nXInicio + N_LARGURA_SIMBOLO
    local nYFinal  := nYInicio + N_ALTURA_SIMBOLO
    
    
return

InKey( 0 )