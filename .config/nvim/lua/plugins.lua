-- Aquí se añaden los diferentes plugins.
return {

	--Lualine & Lua Tabline
	{ "nvim-lualine/lualine.nvim", event = "VeryLazy", dependencies = "kyazdani42/nvim-web-devicons" },
	{ "kdheepak/tabline.nvim", event = "VeryLazy" },

	--LSPs
	{ "onsails/lspkind-nvim", event = "VeryLazy" },
	{ "hrsh7th/cmp-nvim-lsp", event = "VeryLazy" },
	{ "neovim/nvim-lspconfig", event = "VeryLazy" },
	{ "williamboman/mason.nvim", event = "VeryLazy" },
	{ "williamboman/mason-lspconfig.nvim", event = "VeryLazy" },

	--Autocompletado
	{ "hrsh7th/cmp-buffer", event = "VeryLazy" },
	{ "hrsh7th/nvim-cmp", event = "VeryLazy" },

	--Snippets
	{ "L3MON4D3/LuaSnip", event = "VeryLazy" },
	{ "saadparwaiz1/cmp_luasnip", event = "VeryLazy" },
	"rafamadriz/friendly-snippets",

	--Telescope
	--{ "nvim-telescope/telescope.nvim", event = "VeryLazy" },
	--{ "nvim-telescope/telescope-file-browser.nvim", event = "VeryLazy" },
	--{"nvim-telescope/telescope-fzf-native.nvim", run = "make" },

	--Codi - Depurador interactivo
	{ "metakirby5/codi.vim", event = "VeryLazy" },

	--Temas
	"projekt0n/github-nvim-theme",
	--"GustavoPrietoP/doom-themes.nvim",

	--Gestor de archivos
	{ "nvim-neo-tree/neo-tree.nvim", event = "VeryLazy", dependencies = "nvim-lua/plenary.nvim" },

	--Formateador
	{ "MunifTanjim/prettier.nvim", event = "VeryLazy" },
	"fsouza/prettierd",
	{ "jose-elias-alvarez/null-ls.nvim", event = "VeryLazy" },

	--Auto cerramiento
	{ "nvim-treesitter/nvim-treesitter", event = "VeryLazy" },
	{ "windwp/nvim-autopairs", event = "VeryLazy" },
	{ "windwp/nvim-ts-autotag", event = "VeryLazy" },

	-- Which Key
	{ "folke/which-key.nvim", event = "VeryLazy" },

	-- Noice, Nui y Notify
	"folke/noice.nvim",
	"MunifTanjim/nui.nvim",
	"rcarriga/nvim-notify",

	-- Indent lines
	{ "lukas-reineke/indent-blankline.nvim", event = "VeryLazy" },

	-- Multi cursores
	--"mg979/vim-visual-multi",
}
