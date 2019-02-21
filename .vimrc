call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
"colorschemes
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'airblade/vim-gitgutter'

call plug#end()

syntax on
colorscheme gruvbox
set number
set expandtab
set tabstop=2

set hlsearch
set incsearch

"mappings

map <C-n> :NERDTreeToggle<CR>
