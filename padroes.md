# Padrões de estilo de código SG Trainee

## Geral
- Bloco inicial:
```
set date to british
set epoch to 1940
set scoreboard off

clear
```

- Palavras reservadas em minúsculo (`say`, `get`, `if`)
- Utilizar nome com maiúsculas em chamada de função
- Espaço entre parênteses e argumentos
```
Str( nDecimal )
```
- Utilizar aspas simples para literais string
- Preferir `if` em decisões
- Preferir `while` em repetições
- Não utilizar arrays ou definir funções

## Variáveis

- Declarar variáveis no início do código
- Alinhar operadores de atribuição
- Iniciar nome da variável com caractere indicando tipo
- camelCase com até 3 palavras
- Nomes de variáveis em português
```harbour
cLetra     := Space(1)
dDataAtual := Date()
dDataVazia := CToD("")
nInteiro   := 0
nDecimal   := 0
cString    := Space(30)
```

# Entrada/Saída

- Desenhar box ao redor do programa com `.. to ..`
- Fazer bloco de chamadas de `say` separado de bloco de chamadas de `get`
- Alinhar expressões `picture` e `valid`
- Chamar `read` após todos os `get`
- No final, paralizar programa com `InKey( 0 )` e mensagem `Pressione alguma tecla...`
- Utilizar `Empty()` para validações ao invés de comparar com zero
```harbour
@ 00,00 to 10,50

/*
Chamadas de say
*/
@ 01,01 say "Informe uma letra:"
@ 02,01 say "Informe uma data:"
@ 03,01 say "Informe um inteiro:"
@ 04,01 say "Informe um decimal:"
@ 05,01 say "Informe uma string:"

/*
Chamadas de get
*/
@ 01,21 get cLetra
@ 02,21 get dData    picture "@E"
@ 03,21 get nInteiro picture "9999999"    valid nInteiro > 10000
@ 04,21 get nDecimal picture "@E 999.999" valid !Empty( nDecimal )
@ 05,21 get cString
read

/*
Logica do programa...
*/

@ 09,01 say "Pressione alguma tecla..."
```

### Dúvidas:

- Ao reatribuir valores para variáveis, alinhar atribuição?
- Declarar variáveis auxiliares (ex. contadores para loops) no começo do codigo?
- Realizar operações na chamada de `say`/`get` ou utilizar variável adicional?
```clear

cPalavra  := space(30)
nLen      := 0
nContador := 0

@ 01,01 say "Palavra:"

@ 01,10 get cPalavra
read

cPalavra := AllTrim(cPalavra)
nLen     := Len(cPalavra)

@ 02,01 say "Palavra invertida:"

while (nContador < nLen)
    @ 02,(20 + nContador) say SubStr(cPalavra, nLen - nContador, 1)
    nContador++
enddo
```

