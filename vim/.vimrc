" Add Main key
let g:vimrc_path = expand("~/.dotfiles/vim")
let g:plugin_vimrc_path = expand("~/.dotfiles/vim/plugins")
" let g:plugin_vimrc_path = expand("~/.vim/plugin_vimrc")

if filereadable(expand(g:vimrc_path . "/.vimrc.keys"))
	exe 'source' . g:vimrc_path . '/.vimrc.keys'
endif

if filereadable(expand("~/.vimrc.keys.local"))
	source ~/.vimrc.keys.local
endif

" Add Plugin if exist
if filereadable(expand(g:vimrc_path . "/.vimrc.plug"))
	exe 'source' . g:vimrc_path . '/.vimrc.plug'
endif

if filereadable(expand(g:vimrc_path . "/.vimrc.after"))
	exe 'source' . g:vimrc_path . '/.vimrc.after'
endif

if filereadable(expand("~/.vimrc.local"))
	source ~/.vimrc.local
endif
