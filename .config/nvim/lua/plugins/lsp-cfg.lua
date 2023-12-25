-- Este archivo recoge la configuración de los LSP (Protocolos de Servidores de Lenguaje) y autocompletado.
return {
    "neovim/nvim-lspconfig",
    event = "VeryLazy",
    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
    },
    config = function()
        local lspconfig = require("lspconfig")
        local cmp_nvim_lsp = require("cmp_nvim_lsp")

        local capabilities = cmp_nvim_lsp.default_capabilities()

        -- CONFIGS
        local servers = {
            "cssls",
            "html",
            "tsserver",
            "tailwindcss",
            "astro",
            "eslint",
            "pyright",
            "jsonls",
            "vimls",
            "lua_ls",
            "emmet_ls",
        }

        for _, lsp in ipairs(servers) do
            lspconfig[lsp].setup({
                on_attach = on_attach,
                capabilities = capabilities,
            })
        end

        lspconfig.lua_ls.setup({
            capabilities = capabilities,
            on_attach = on_attach,
            settings = {
                Lua = {
                    diagnostics = {
                        globals = { "vim" },
                    },
                    workspace = {
                        library = {
                            [vim.fn.expand("$VIMRUNTIME/lua")] = true,
                            [vim.fn.expand("$VIMRUNTIME/lua/vim/lsp")] = true,
                            [vim.fn.stdpath("data") .. "/lazy/lazy.nvim/lua/lazy"] = true,
                        },
                        maxPreload = 100000,
                        preloadFileSize = 10000,
                    },
                },
            },
        })
    end,
}
