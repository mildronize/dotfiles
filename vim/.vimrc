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
Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'majutsushi/tagbar'
Plug 'ervandew/supertab'
Plug 'jiangmiao/auto-pairs'            " When press any brackets, it can make a pair of the bracket.
Plug 'flazz/vim-colorschemes'          " A large collection of Vim color schemes
Plug 'bling/vim-airline'               " More Function & theme in Vim status bar
Plug 'zhaocai/GoldenView.Vim'          " Auto zoom (extended window size) when active a window
Plug 'bronson/vim-trailing-whitespace'
Plug 'ap/vim-css-color'
Plug 'reedes/vim-lexical'
Plug 'godlygeek/tabular'
Plug 'tpope/vim-repeat'                " Required by vim-easyclip
Plug 'christoomey/vim-system-copy'
                                       " Git
Plug 'tpope/vim-fugitive'              " Easy to use git tools
Plug 'airblade/vim-gitgutter'          " Intregrate git into Vim for showing the changes

                                       " Personal Use
Plug 'chakrit/vim-thai-keys'           " Allow use Thai char to control Vim
Plug 'xolox/vim-colorscheme-switcher'  " Press <F8> to change vim color scheme
Plug 'xolox/vim-misc'
call plug#end()


" Plugin config
for file in split(glob('~/.dotfiles/vim/plugins/*.vim'), '\n')
    exe 'source' file
endfor

if filereadable(expand("~/.vimrc.local"))
	source ~/.vimrc.local
endif

if filereadable(expand("~/.vimrc.after"))
	source ~/.vimrc.after
endif
