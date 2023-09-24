-- Aquí se añaden los diferentes plugins.
return {

	--Lualine & Lua Tabline
	{ "nvim-lualine/lualine.nvim", dependencies = "kyazdani42/nvim-web-devicons" },
	{ "kdheepak/tabline.nvim" },
    { "meuter/lualine-so-fancy.nvim"},

	--LSPs
	{ "neovim/nvim-lspconfig", lazy = true },
	{ "onsails/lspkind-nvim", lazy = true, dependencies = "jose-elias-alvarez/null-ls.nvim" },
	{ "hrsh7th/cmp-nvim-lsp", lazy = true },
	{ "williamboman/mason.nvim", lazy = true },
	{ "williamboman/mason-lspconfig.nvim", lazy = true },

	--Autocompletado
	{ "hrsh7th/cmp-buffer", lazy = true },
	{ "hrsh7th/nvim-cmp", lazy = true },

	--Snippets
	{ "L3MON4D3/LuaSnip" },
	{ "saadparwaiz1/cmp_luasnip" },
    {"rafamadriz/friendly-snippets" },

	--Codi - Depurador interactivo
	{ "metakirby5/codi.vim" },

	--Temas
	"projekt0n/github-nvim-theme",
	--"GustavoPrietoP/doom-themes.nvim",

	--Gestor de archivos
	{ "nvim-neo-tree/neo-tree.nvim", event = "VeryLazy", dependencies = "nvim-lua/plenary.nvim" },

	--Formateador
	{ "MunifTanjim/prettier.nvim" },
	"fsouza/prettierd",

	--Auto cerramiento
	{ "windwp/nvim-ts-autotag", lazy = true, dependencies = "nvim-treesitter/nvim-treesitter" },
	{ "windwp/nvim-autopairs", lazy = true },

	-- Which Key
	{ "folke/which-key.nvim", event = "VeryLazy" },

	-- Noice, Nui y Notify
	"MunifTanjim/nui.nvim",
	"folke/noice.nvim",
	"rcarriga/nvim-notify",

	-- Indent lines
	{ "lukas-reineke/indent-blankline.nvim", lazy = true },

	-- Multi cursores
	--"mg979/vim-visual-multi",
}
