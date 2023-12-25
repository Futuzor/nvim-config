return {
    "nvim-lualine/lualine.nvim",
    dependencies = { "kyazdani42/nvim-web-devicons", "meuter/lualine-so-fancy.nvim" },
    config = function()
        local config = {
            options = {
                icons_enabled = true,
                component_separators = { left = " ", right = " " },
                section_separators = { left = "", right = "" },
                disabled_filetypes = {
                    statusline = { "neo-tree", "toggleterm" },
                    winbar = {},
                },
                ignore_focus = {},
                always_divide_middle = true,
                globalstatus = false,
                refresh = {
                    statusline = 100,
                    tabline = 100,
                    winbar = 100,
                },
            },
            sections = {
                lualine_a = {},
                lualine_b = { "branch", "diff", "diagnostics" },
                lualine_c = {},
                lualine_x = {},
                lualine_y = {},
                lualine_z = {},
            },
            inactive_sections = {
                lualine_a = {},
                lualine_b = {},
                lualine_c = { "filename" },
                lualine_x = { "location" },
                lualine_y = {},
                lualine_z = {},
            },
            tabline = {
                lualine_a = {
                    {
                        "buffers",
                        symbols = {
                            modified = "[+]",
                            readonly = "[-]",
                            unnamed = "[Sin nombre]",
                            newfile = "[Nuevo]",
                        },
                    },
                },
            },
            winbar = {},
            inactive_winbar = {},
            extensions = {},
        }

        local function mode(component)
            table.insert(config.sections.lualine_a, component)
        end

        local function filename(component)
            table.insert(config.sections.lualine_c, component)
        end

        local function lsp(component)
            table.insert(config.sections.lualine_y, component)
        end

        local function line(component)
            table.insert(config.sections.lualine_z, component)
        end

        mode({
            "mode",
            icon = "",
            color = { gui = "bold" },
            separator = { left = "", right = "" },
            padding = { left = 0 },
        })

        filename({
            "filetype",
            icon_only = true,
            colored = false,
            padding = { left = 1, right = 0 },
        })

        filename({
            "filename",
            padding = { left = 0, right = 0 },
            symbols = {
                modified = "[+]",
                readonly = "[-]",
                unnamed = " [Sin nombre]",
                newfile = " [Nuevo]",
            },
            color = { gui = "bold" },
        })

        lsp({
            "fancy_lsp_servers",
            separator = { left = "", right = " " },
            padding = { left = 0, right = 0 },
        })

        line({
            "location",
            icon = "󰗈",
            separator = { left = "", right = "" },
            padding = { left = 0, right = 0 },
        })

        require("lualine").setup(config)
    end,
}
