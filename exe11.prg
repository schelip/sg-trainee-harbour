clear

cNome := Space(30)
nIdade := 0

@ 01,01 say "Nome:"
@ 02,01 say "Idade:"

@ 01,08 get cNome
@ 02,08 get nIdade
read

if (nIdade <= 7)
    cCategoria := 'Infantil A'
elseif (nIdade <= 10)
    cCategoria := 'Infantil B'
elseif (nIdade <= 13)
    cCategoria := 'Juvenil A'
elseif (nIdade <= 17)
    cCategoria := 'Juvenil B'
else
    cCategoria := 'Senior'
endif

@ 03,01 say Trim(cNome) + " esta na categoria " + cCategoria
