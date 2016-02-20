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
Plug 'flazz/vim-colorschemes'          " A large collection of Vim color schemes
Plug 'bling/vim-airline'               " More Function & theme in Vim status bar
Plug 'zhaocai/GoldenView.Vim'          " Auto zoom (extended window size) when active a window
Plug 'bronson/vim-trailing-whitespace'
Plug 'ap/vim-css-color'
Plug 'reedes/vim-lexical'
Plug 'godlygeek/tabular'
Plug 'tpope/vim-repeat'                " It can make repeat the all commmands
Plug 'christoomey/vim-system-copy'
Plug 'editorconfig/editorconfig-vim'
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-surround'
Plug 'tmux-plugins/vim-tmux-focus-events' " Make terminal vim and tmux work better together.

Plug 'kien/ctrlp.vim'
                                       " Git
Plug 'tpope/vim-fugitive'              " Easy to use git tools
Plug 'airblade/vim-gitgutter'          " Intregrate git into Vim for showing the changes

Plug 'suan/vim-instant-markdown' " Markdown Preview
                                       " Personal Use
" Plug 'chakrit/vim-thai-keys'           " Allow use Thai char to control Vim
Plug 'xolox/vim-colorscheme-switcher'  " Press <F8> to change vim color scheme
Plug 'xolox/vim-misc'
call plug#end()


" Plugin config
for file in split(glob('~/.dotfiles/vim/plugins/*.vim'), '\n')
    exe 'source' file
endfor

if filereadable(expand("~/.vimrc.after"))
	source ~/.vimrc.after
endif

if filereadable(expand("~/.vimrc.local"))
	source ~/.vimrc.local
endif
