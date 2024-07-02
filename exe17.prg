clear

cNome := "felipe"
nLen := len(cNome)

for nCounter := 0 to nLen - 1
    @ nCounter,01 say substr(cNome, nLen - nCounter, 1)
next