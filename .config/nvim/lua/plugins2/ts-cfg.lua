require("nvim-treesitter.configs").setup({
	ensure_installed = { "lua", "vim", "javascript", "json", "css", "html", "python", "typescript", "astro", "markdown" }, -- Only use parsers that are maintained
	auto_install = true,
	autotag = {
		enable = true,
		filetype = { "html", "xml", "javascript", "typescript", "css", "json", "python", "astro", "markdown", "javascriptreact", "typescriptreact" },
	},
	highlight = { -- enable highlighting
		enable = true,
	},
	indent = {
		enable = true, -- default is disabled anyways
	},
})
