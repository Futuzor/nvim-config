--En este archivo se recoge la configuración del plugin NeoTreebre/Cierra el NeoTree poniendo el foco en el mismo.

return {
    "nvim-neo-tree/neo-tree.nvim",
    event = "VeryLazy",
    dependencies = { "nvim-lua/plenary.nvim", "MunifTanjim/nui.nvim" },
    config = function()
        require("neo-tree").setup({
            filesystem = {
                filtered_items = {
                    hide_dotfiles = false,
                },
                window = {
                    mappings = {
                        ["<CR>"] = "open_tabnew", --Al pulsar la tecla ENTER dentro de NeoTree, carga el archivo actual en una pestaña, en vez de un búfer.
                    },
                },
            },
        })
    end,
}
