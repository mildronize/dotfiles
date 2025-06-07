if isdirectory(expand("~/.vim/plugged/vim-lexical"))
    augroup lexical
      autocmd!
      autocmd FileType markdown,md,mkd call lexical#init()
      autocmd FileType textile call lexical#init()
      autocmd FileType text call lexical#init({ 'spell': 0 })
    augroup END
endif
