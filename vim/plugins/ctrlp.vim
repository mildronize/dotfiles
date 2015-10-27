if isdirectory(expand("~/.vim/plugged/ctrlp.vim"))
    let g:ctrlp_show_hidden = 1
    " let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|server_modules\|build'
    let g:ctrlp_custom_ignore = 'node_modules'
endif
