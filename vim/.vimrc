"change <Leader> / to space
let mapleader = " "

if filereadable(expand("~/.vimrc.local")) 
	source ~/.vimrc.local
endif

" Add Main key
if filereadable(expand("~/.dotfiles/vim/.vimrc.keys")) 
	source ~/.dotfiles/vim/.vimrc.keys
endif

" Plugin config 
for file in split(glob('~/.dotfiles/vim/.vimrc.plugins.*'), '\n')
    exe 'source' file
endfor

" Vim plug
call plug#begin()
Plug 'tpope/vim-fugitive'
call plug#end()
