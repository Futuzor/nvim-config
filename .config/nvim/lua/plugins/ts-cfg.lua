--Auto cerramiento
return {
    "nvim-treesitter/nvim-treesitter",
    dependencies = "windwp/nvim-ts-autotag",
    event = "BufReadPre",
    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = {
                "lua",
                "vim",
                "javascript",
                "json",
                "css",
                "html",
                "python",
                "typescript",
                "astro",
                "markdown",
            }, -- Only use parsers that are maintained
            auto_install = true,
            highlight = { -- enable highlighting
                enable = true,
            },
            autotag = {
                enable = true,
            },
            indent = {
                enable = true, -- default is disabled anyways
            },
        })
    end,
}
