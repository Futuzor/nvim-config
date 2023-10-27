-- Aquí se añaden los diferentes plugins.
return {

    --Lualine & Lua Tabline
    {
        "nvim-lualine/lualine.nvim",
        dependencies = { "kyazdani42/nvim-web-devicons", "meuter/lualine-so-fancy.nvim" },
        config = function()
            require("plugins.lualine-cfg")
        end,
    },

    --LSPs
    {
        "neovim/nvim-lspconfig",
        event = "VeryLazy",
        dependencies = {
            "hrsh7th/cmp-nvim-lsp"
        },
        config = function()
            require("plugins.lsp-cfg")
        end,
    },

    -- Mason
    {
        "williamboman/mason.nvim",
        dependencies = "williamboman/mason-lspconfig.nvim",
        config = function()
            require("plugins.mason-cfg")
        end,
    },

    --Autocompletado
    {
        "hrsh7th/nvim-cmp",
        dependencies = {
            "hrsh7th/cmp-buffer",
            "onsails/lspkind-nvim",
            "saadparwaiz1/cmp_luasnip"
        },
        event = "BufRead",
        config = function()
            require("plugins.cmp-cfg")
        end,
    },

    --Snippets
    {
        "L3MON4D3/LuaSnip",
        dependencies = "rafamadriz/friendly-snippets",
        config = function()
            require("plugins.luasnip-cfg")
        end,
    },

    -- Null LS (Resaltado de sintaxis)
    {
        "nvimtools/none-ls.nvim",
        event = "BufRead",
        config = function()
            require("plugins.nls-cfg")
        end
    },

    --Codi - Depurador interactivo
    --{ "metakirby5/codi.vim" },

    --Temas
    {
        "projekt0n/github-nvim-theme",
        config = function()
            require("plugins.github")
        end,
    },
    --"GustavoPrietoP/doom-themes.nvim",

    --Gestor de archivos
    {
        "nvim-neo-tree/neo-tree.nvim",
        event = "VeryLazy",
        dependencies = { "nvim-lua/plenary.nvim", "MunifTanjim/nui.nvim" },
        config = function()
            require("plugins.neotree-cfg")
        end,
    },

    --Formateador
    { "MunifTanjim/prettier.nvim" },
    "fsouza/prettierd",

    --Auto cerramiento
    { "windwp/nvim-ts-autotag", event = "VeryLazy", dependencies = "nvim-treesitter/nvim-treesitter" },
    { "windwp/nvim-autopairs", event = "VeryLazy" },

    -- Which Key
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        config = function()
            require("plugins.wk-cfg")
        end,
    },

    -- Noice, Nui y Notify
    {
        "folke/noice.nvim",
        event = "VeryLazy",
        config = function()
            require("plugins.noice-cfg")
        end,
    },
    {
        "rcarriga/nvim-notify",
        event = "VeryLazy",
        config = function()
            require("plugins.notify-cfg")
        end,
    },

    -- Indent lines
    {
        "lukas-reineke/indent-blankline.nvim",
        event = "BufRead",
        config = function()
            require("plugins.indent-blankline")
        end,
    },

    -- Puppeteer
    { "chrisgrieser/nvim-puppeteer", lazy = true },

    -- Trouble
    { "folke/trouble.nvim",          lazy = true },

    -- Mover líneas
    { "fedepujol/move.nvim" },
}
