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
let g:airline#extensions#nvimlsp#enabled = 1


source ~/.config/nvim/plugins.vim "Carga el archivo plugins.vim
source ~/.config/nvim/keys.vim "Carga el archivo keys.vim
source ~/.config/nvim/lsp.lua
source ~/.config/nvim/telescope.lua
source ~/.config/nvim/mason.lua
source ~/.config/nvim/luasnip.lua
source ~/.config/nvim/netrw.vim
source ~/.config/nvim/codiconf.vim

colorscheme github_dark_colorblind
set completeopt = "menu, menuone, noselect""

