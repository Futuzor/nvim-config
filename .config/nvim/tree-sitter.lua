local configs = require'nvim-treesitter.configs'

configs.setup {
    ensure_installed = "lua", "vim", "javascript", "json", "css", "html", "python",  -- Only use parsers that are maintained
    highlight = { -- enable highlighting
        enable = true, 
    },

    indent = {
        enable = true, -- default is disabled anyways
    },
}
