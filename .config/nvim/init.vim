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
set spell
set spelllang=es

syntax on
filetype indent on
filetype on

source ~/.config/nvim/plugins.vim "Carga el archivo plugins.vim
source ~/.config/nvim/keys.vim "Carga el archivo keys.vim
source ~/.config/nvim/lsp.lua
source ~/.config/nvim/airline.vim
source ~/.config/nvim/telescope.lua
source ~/.config/nvim/mason.lua
source ~/.config/nvim/luasnip.lua
""source ~/.config/nvim/netrw.vim
source ~/.config/nvim/neotree.lua
source ~/.config/nvim/codiconf.vim
source ~/.config/nvim/tree-sitter.lua
source ~/.config/nvim/autopairs.lua

colorscheme github_dark_colorblind
set completeopt = "menu, menuone, noselect"
