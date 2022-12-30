require("nvim-treesitter.configs").setup {
    highlight = {
      enable = true,
        additional_vim_regex_highlighting = false,
      module_path = "nvim-treesitter.highlight"
    },
    indent = {
        enable = true,
        module_path = "nvim-treesitter.indent" 
    }
}
