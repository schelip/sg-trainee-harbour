clear

nCodigo := 0

@ 01,01 say "Codigo:"

@ 01,10 get nCodigo
read

if (nCodigo < 1 .or. nCodigo > 15)
    nClassificao := "Codigo invalido"
elseif (nCodigo = 1)
    nClassificao := "Alimento nao-perecivel"
elseif (nCodigo <= 4)
    nClassificao := "Alimento perecivel"
elseif (nCodigo <= 6)
    nClassificao := "Vestuario"
elseif (nCodigo == 7)
    nClassificao := "Higiene Pessoal"
else
    nClassificao := "Limpeza e utensilios domesticos"
endif

@ 03,01 say "Classificacao: " + nClassificao