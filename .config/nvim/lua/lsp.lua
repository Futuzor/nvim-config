-- Este archivo recoge la configuración de los LSP (Protocolos de Servidores de Lenguaje) y autocompletado.

-- Add additional capabilities supported by nvim-cmp
local capabilities = require("cmp_nvim_lsp").default_capabilities()
local lspconfig = require("lspconfig")

local lsp_flags = {
	-- This is the default in Nvim 0.7+
	debounce_text_changes = 150,
}

-- Enable some language servers with the additional completion capabilities offered by nvim-cmp
local servers = { "pyright", "tsserver", "vimls", "html", "cssls", "lua_ls", "tailwindcss" }
for _, lsp in ipairs(servers) do
	lspconfig[lsp].setup({
		capabilities = capabilities,
        flags = lsp_flags,
	})
end
