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
--vim.opt.spell = true
--vim.opt.spelllang = { "es" }
vim.opt.termguicolors = true
vim.opt.linebreak = true
vim.opt.wrap = true
vim.opt.textwidth = 85
vim.opt.conceallevel = 2
vim.o.completeopt = "menu,menuone,noselect"
vim.opt.syntax = "on"

--Configs externas
require("keys")
require("lazy-cfg")
require("neotree-cfg")
require("lualine-cfg")
require("tabline-cfg")
require("cmp-cfg")
require("lsp-cfg")
require("codiconf")
require("mason-cfg")
require("luasnip-cfg")
require("nls-cfg")
require("noice-cfg")
require("notify-cfg")
require("prettier-cfg")
require("wk-cfg")
require("autopairs")
require("github")
require("indent-blankline")
require("ts-cfg")
--require("telescope-cfg")

--Proveedores
vim.cmd("let g:python3_host_prog = $PYTHONBIN")
