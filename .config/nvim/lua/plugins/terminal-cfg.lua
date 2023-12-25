return {
    "akinsho/toggleterm.nvim",
    event = "VeryLazy",
    config = function()
        require("toggleterm").setup({
            open_mapping = [[<leader>tt]],
            winbar = {
                enabled = false,
                name_formatter = function(term)
                    return term.name
                end,
            },
        })
    end,
}
