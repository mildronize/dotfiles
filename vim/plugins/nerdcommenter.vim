if isdirectory(expand("~/.vim/plugged/nerdcommenter"))
    " nerdcommenter comment with space //.<code>
    let NERDSpaceDelims=1""

    " Remap <Leader>ci to <Leader>/
    nmap <silent> <Leader>/ <Leader>ci<Esc>
    vmap <silent> <Leader>/ <Leader>ci<Esc>
endif
