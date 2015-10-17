if isdirectory(expand("~/.vim/plugged/vim-airline"))
    if !exists('g:airline_symbols')
        let g:airline_symbols = {}
    endif

    if $PUTTY == 'true'
        " If it is remoted from windows or putty (Doesn't support some unicode char)
        let g:airline_left_sep = ' '
        let g:airline_right_sep = ' '
        let g:airline_symbols.branch = '|B'
        let g:airline_symbols.readonly = 'RO'
        let g:airline_symbols.linenr = '#'
    else
        " powerline symbols
        let g:airline_left_sep = ''
        let g:airline_right_sep = ''
        let g:airline_symbols.branch = ''
        let g:airline_symbols.readonly = ''
        let g:airline_symbols.linenr = ''
    endif

    let g:airline_theme='powerlineish'
    " let g:airline_theme='durant'
    " let g:airline_theme='dark'

    " Extension Tab Line
    " let g:airline#extensions#tabline#enabled = 1
    " let g:airline#extensions#tabline#left_sep = ' '
    " let g:airline#extensions#tabline#left_alt_sep = '|'
endif
