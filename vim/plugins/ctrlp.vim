if isdirectory(expand("~/.vim/plugged/ctrlp.vim"))
    let g:ctrlp_show_hidden = 1
    " let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|server_modules\|build'
    " let g:ctrlp_custom_ignore = 'node_modules'
    set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
    set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

    let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
    let g:ctrlp_custom_ignore = {
      \ 'dir':  '\v[\/]\.(git|hg|svn)$',
      \ 'file': '\v\.(exe|so|dll)$',
      \ 'link': 'some_bad_symbolic_links',
      \ }
endif
