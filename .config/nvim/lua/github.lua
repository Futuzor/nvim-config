require("github-theme").setup({
	options = {
		transparent = true,
		hide_end_of_buffer = true,
		hide_nc_statusline = true,
		styles = {
			comments = "italic,bold",
			functions = "bold",
			keywords = "bold",
			variables = "NONE",
            operators = "NONE",
            types = "bold"
		},
		darken = {
			floats = true,
			sidebars = {
				enable = true,
				list = {},
			},
		},
	},
})

vim.cmd("colorscheme github_dark_high_contrast")
