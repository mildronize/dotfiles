" Add Main key
if filereadable(expand("~/.vimrc.keys"))
	source ~/.vimrc.keys
endif

if filereadable(expand("~/.vimrc.keys.local"))
	source ~/.vimrc.keys.local
endif

" Plugin Management

" Vim plug
call plug#begin()
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'majutsushi/tagbar'
Plug 'ervandew/supertab'
Plug 'jiangmiao/auto-pairs'
Plug 'flazz/vim-colorschemes'
Plug 'bling/vim-airline'
Plug 'zhaocai/GoldenView.Vim'
Plug 'bronson/vim-trailing-whitespace'
Plug 'ap/vim-css-color'
Plug 'reedes/vim-lexical'
Plug 'godlygeek/tabular'
call plug#end()

" Plugin config
for file in split(glob('~/.dotfiles/vim/.vimrc.plugins.*'), '\n')
    exe 'source' file
endfor

if filereadable(expand("~/.vimrc.local"))
	source ~/.vimrc.local
endif

if filereadable(expand("~/.vimrc.after"))
	source ~/.vimrc.after
endif
