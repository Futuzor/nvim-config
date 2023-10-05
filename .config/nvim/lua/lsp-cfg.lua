-- Este archivo recoge la configuración de los LSP (Protocolos de Servidores de Lenguaje) y autocompletado.

local lspconfig = require("lspconfig")
local lsp_defaults = lspconfig.util.default_config

local lsp_flags = {
	-- This is the default in Nvim 0.7+
	debounce_text_changes = 150,
}

local servers = { "html", "cssls", "tsserver", "pyright", "lua_ls", "tailwindcss", "astro" }
for _, lsp in ipairs(servers) do
	lspconfig[lsp].setup({
		capabilities = lsp_defaults.capabilities,
		flags = lsp_flags,
	})
end

lsp_defaults.capabilities = vim.tbl_deep_extend(
  'force',
  lsp_defaults.capabilities,
  require('cmp_nvim_lsp').default_capabilities()
)

