-- Aquí se configura Lazy y se añaden los diferentes plugins.
require("lazy").setup({

    --Airline
    --"vim-airline/vim-airline",
    --"vim-airline/vim-airline-themes",
    
    --Lualine & Lua Taline
    "nvim-lualine/lualine.nvim",
    "kdheepak/tabline.nvim",

    --LSPs
    "onsails/lspkind-nvim",
    "hrsh7th/cmp-nvim-lsp",
    "neovim/nvim-lspconfig",
    "nvim-lua/plenary.nvim",
    {"williamboman/mason.nvim", lazy = true},
    {"williamboman/mason-lspconfig.nvim", lazy = true},

    --Autocompletado
    "hrsh7th/cmp-buffer",
    "hrsh7th/nvim-cmp",

    --Snippets
    {"L3MON4D3/LuaSnip", lazy = true},
    "saadparwaiz1/cmp_luasnip",
    "rafamadriz/friendly-snippets",
    "honza/vim-snippets",
    
    --Telescope
    {"nvim-telescope/telescope.nvim", lazy = true },
    {"nvim-telescope/telescope-file-browser.nvim", lazy = true },
    --{"nvim-telescope/telescope-fzf-native.nvim", run = "make" },

    --Codi - Depurador interactivo
    {"metakirby5/codi.vim", lazy = true },

    --Iconos DEV
    {"kyazdani42/nvim-web-devicons", lazy = true },
    {"ryanoasis/vim-devicons", lazy = true },

    --Temas
    "projekt0n/github-nvim-theme",
    --"GustavoPrietoP/doom-themes.nvim",

    --Gestor de archivos
    {"nvim-neo-tree/neo-tree.nvim", lazy = true },

    --Formateador
    "MunifTanjim/prettier.nvim",
    "fsouza/prettierd",
    "jose-elias-alvarez/null-ls.nvim",

    --Auto cerramiento
    {"nvim-treesitter/nvim-treesitter", lazy = true},
    {"windwp/nvim-autopairs", lazy = true },
    {"windwp/nvim-ts-autotag", lazy = true },

    -- Which Key
    {"folke/which-key.nvim", lazy = true},

    -- Noice, Nui y Notify
    "folke/noice.nvim",
    "MunifTanjim/nui.nvim", 
    'rcarriga/nvim-notify',
})
