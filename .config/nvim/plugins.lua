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
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",

    --Autocompletado
    "hrsh7th/cmp-buffer",
    "hrsh7th/nvim-cmp",

    --Snippets
    "L3MON4D3/LuaSnip",
    "saadparwaiz1/cmp_luasnip",
    "rafamadriz/friendly-snippets",
    "honza/vim-snippets",
    
    --Telescope
    {"nvim-telescope/telescope.nvim", event="VeryLazy"},
    {"nvim-telescope/telescope-file-browser.nvim", event="VeryLazy"},
    --{"nvim-telescope/telescope-fzf-native.nvim", run = "make" },

    --Codi - Depurador interactivo
    {"metakirby5/codi.vim", event = "VeryLazy"},

    --Iconos DEV
    {"kyazdani42/nvim-web-devicons", event = "VeryLazy"},
    {"ryanoasis/vim-devicons", event = "VeryLazy"},

    --Temas
    "projekt0n/github-nvim-theme",

    --Gestor de archivos
    "nvim-neo-tree/neo-tree.nvim",

    --Formateador
    "MunifTanjim/prettier.nvim",
    "fsouza/prettierd",
    "jose-elias-alvarez/null-ls.nvim",

    --Auto cerramiento
    "nvim-treesitter/nvim-treesitter",
    "windwp/nvim-autopairs",
    "windwp/nvim-ts-autotag",

    -- Which Key
    {"folke/which-key.nvim", event = "VeryLazy"},

    -- Noice, Nui y Notify
    "folke/noice.nvim",
    "MunifTanjim/nui.nvim", 
    'rcarriga/nvim-notify',
})
