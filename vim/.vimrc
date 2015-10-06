if filereadable(expand("~/.vimrc.local")) 
	source ~/.vimrc.local
endif

call plug#begin()
Plug 'tpope/vim-fugitive'
call plug#end()
