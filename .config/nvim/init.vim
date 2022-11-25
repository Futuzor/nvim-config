set number
set encoding=utf-8
set fileencoding=utf-8
set title
set autoindent
set hlsearch
set showcmd
set laststatus
set expandtab
set smarttab
set breakindent
set tabstop=4
set shiftwidth=4
set smartindent

syntax on
filetype indent on
filetype on

"" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#capslock#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme = 'powerlineish'

source /home/futuzor/.config/nvim/plugins.vim "Carga el archivo plugins.vim
source /home/futuzor/.config/nvim/keys.vim "Carga el archivo keys.vim
source /home/futuzor/.config/nvim/lsp.lua
source /home/futuzor/.config/nvim/mason.lua
source /home/futuzor/.config/nvim/luasnip.lua
