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
inoremap CTRL+[ <Esc>
map <C-n> :NERDTreeToggle<CR>

set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0
