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
set termguicolors

syntax on
filetype indent on
filetype on

source ~/.config/nvim/lazy.lua "Carga el archivo lazy.lua
source ~/.config/nvim/plugins.lua "Carga el archivo plugins.lua
source ~/.config/nvim/keys.vim "Carga el archivo keys.vim
source ~/.config/nvim/lsp.lua
source ~/.config/nvim/airline.vim
source ~/.config/nvim/telescope.lua
source ~/.config/nvim/mason.lua
source ~/.config/nvim/luasnip.lua
source ~/.config/nvim/noice.lua
source ~/.config/nvim/notify.lua
source ~/.config/nvim/neotree.lua
source ~/.config/nvim/codiconf.vim
source ~/.config/nvim/tree-sitter.lua
source ~/.config/nvim/autopairs.lua
source ~/.config/nvim/null-ls.lua
source ~/.config/nvim/prettier.lua
source ~/.config/nvim/which-key.lua

colorscheme github_dark_colorblind
set completeopt = "menu, menuone, noselect"

""Proveedores
let g:python3_host_prog = "/usr/bin/python3.11"
