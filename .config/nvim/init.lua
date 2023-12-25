--Configuración inicial
vim.opt.number = true
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"
vim.opt.title = true
vim.opt.autoindent = true
vim.opt.hlsearch = true
vim.opt.showcmd = true
vim.opt.laststatus = 1
vim.opt.expandtab = true
vim.opt.smarttab = true
vim.opt.breakindent = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.smartindent = true
vim.opt.termguicolors = true
vim.opt.langmenu = "es_ES"
vim.opt.linebreak = true
vim.opt.wrap = false
vim.opt.textwidth = 85
vim.opt.conceallevel = 3
vim.o.completeopt = "menu,menuone,noselect"
vim.opt.syntax = "on"
vim.opt.cursorline = true
vim.opt.swapfile = false
vim.opt.backup = false

--Configs externas
require("keys")
require("lazy-cfg")

--Proveedores
vim.cmd("let g:python3_host_prog = $PYTHONBIN")
