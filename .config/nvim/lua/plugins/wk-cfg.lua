-- Which Key
return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    config = function()
        local wk = require("which-key")

        wk.setup({
            plugins = {
                marks = true,
                registers = true,
                presets = {
                    operators = true,
                    motions = true,
                    text_objects = true,
                    windows = true,
                    z = true,
                    g = true,
                },
            },
        })
    end,
}
