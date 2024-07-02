clear

nIdade := 0

@ 01,01 say "Idade:"

@ 01,08 get nIdade
read

if (nIdade > 21)
    @ 02,01 say "Maior de idade"
else
    @ 02,01 say "Menor de idade"
endif