clear

do while .t.
    nCodCli := space(06)

    @ 12,10 say "Informe o codigo do cliente:"

    @12,40 get nCodCli pict "999999"
    read

    if lastKey() = 27 //esc
        exit
    endif
enddo