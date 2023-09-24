local null_ls = require("null-ls")

local diagnostics = null_ls.builtins.diagnostics
local completion = null_ls.builtins.completion
local formatting = null_ls.builtins.formatting
local actions = null_ls.builtins.code_actions

null_ls.setup({
	debug = false,
	sources = {
		--Formateador del Prettier
		formatting.prettier_d_slim.with({ extra_args = { "--no-semi", "--double-quotes" } }),

		--Formateador para Lua
		formatting.stylua,

		--Formateador Markdown
		formatting.markdown_toc,

		--Formateador para Python
		formatting.black,

		--Eslint para JS y TS
		diagnostics.eslint_d,

		--Linter para el JSON
		diagnostics.jsonlint,

		--Linter pra Markdown
		diagnostics.markdownlint,

		--Linter para Python
		diagnostics.pylint,

		diagnostics.stylelint,

		actions.eslint_d,
		actions.refactoring,
	},
})
