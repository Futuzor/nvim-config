-- Este archivo recoge la configuración de los LSP (Protocolos de Servidores de Lenguaje) y autocompletado.

local lspconfig = require("lspconfig")
local capabilities = vim.lsp.protocol.make_client_capabilities()

local lsp_flags = {
	-- This is the default in Nvim 0.7+
	debounce_text_changes = 150,
}

local servers = { "html", "cssls", "tsserver", "pyright", "lua_ls", "tailwindcss", "astro" }
for _, lsp in ipairs(servers) do
	lspconfig[lsp].setup({
        capabilities = capabilities,
		flags = lsp_flags,
	})
end

capabilities = vim.tbl_deep_extend(
  'force',
  capabilities,
  require('cmp_nvim_lsp').default_capabilities()
)

