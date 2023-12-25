-- Aquí se añaden los diferentes plugins.
return {

    --Codi - Depurador interactivo
    --{ "metakirby5/codi.vim" },

    --"GustavoPrietoP/doom-themes.nvim",

    --[[Formateador
	{
		"MunifTanjim/prettier.nvim",
		config = function()
			require("plugins.prettier-cfg")
		end,
	},]]
    --"fsouza/prettierd",

    -- Puppeteer
    --{ "chrisgrieser/nvim-puppeteer", lazy = true },

    -- Trouble
    --{ "folke/trouble.nvim", lazy = true },

    --[[{
		"HiPhish/rainbow-delimiters.nvim",
		config = function()
			local rd = require("rainbow-delimiters")
			require("rainbow-delimiters.setup").setup{
				strategy = {
					[""] = rd.strategy["global"],
					commonlisp = rd.strategy["local"],
					vim = rd.strategy["local"],
					lua = rd.strategy["global"],
				},
				query = {
					[""] = "rainbow-delimiters",
					lua = "rainbow-blocks",
				},
				highlight = {
					"RainbowDelimiterRed",
					"RainbowDelimiterYellow",
					"RainbowDelimiterBlue",
					"RainbowDelimiterOrange",
					"RainbowDelimiterGreen",
					"RainbowDelimiterViolet",
					"RainbowDelimiterCyan",
				},
			}
		end,
	},]]
    --
}
