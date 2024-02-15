return {
	"mfussenegger/nvim-dap",
	dependencies = {
		"rcarriga/nvim-dap-ui",
		"mxsdev/nvim-dap-vscode-js",
		"mfussenegger/nvim-dap-python",
		"theHamsta/nvim-dap-virtual-text",
	},
	event = "BufReadPost",
	config = function()
		local dap = require("dap")
		local dapui = require("dapui")

		dapui.setup()

		dap.listeners.after.event_initialized["dapui_config"] = function()
			dapui.open()
		end

		dap.listeners.before.event_terminated["dapui_config"] = function()
			dapui.close()
		end

		dap.listeners.before.event_exited["dapui_config"] = function()
			dapui.close()
		end

		-- Configuración Python
		require("dap-python").setup("/home/futuzor/Documentos/Python/debugpy/bin/python")

		-- Configuración JavaScript/TypeScript
		dap.adapters["pwa-node"] = {
			type = "server",
			host = "localhost",
			port = 8123,
			executable = {
				--command = "~/.dap/vscode-js-debug/out/src/vsDebugServer.js", -- Path to VSCode Debugger
				command = "js-debug-adapter",
			},
		}

		--[[require("dap-vscode-js").setup({
			node_path = "node",                                                                          -- Path of node executable. Defaults to $NODE_PATH, and then $VIMRUNTIME/lua/?.lua
			debugger_path = "/home/futuzor/.dap/vscode-js-debug",
			debugger_cmd = { "node", "/home/futuzor/.dap/vscode-js-debug/out/src/vsDebugServer.js" },    -- Path to vscode-js-debug installation.
			adapters = { "pwa-node", "pwa-chrome", "pwa-msedge", "node-terminal", "pwa-extensionHost" }, -- which adapters to register in nvim-dap
		})--]]

		for _, language in ipairs({ "typescript", "javascript" }) do
			dap.configurations[language] = {
				{
					type = "pwa-node",
					request = "launch",
					name = "Launch file in Node",
					program = "${file}",
					cwd = vim.fn.getcwd(),
					runtimeExecutable = "ts-node",
				},
			}
		end
	end,

	vim.keymap.set(
		"n",
		"<Leader>db",
		":lua require'dap'.toggle_breakpoint()<CR>",
		{ silent = true, desc = "Toggle Breakpoint" }
	),
	vim.keymap.set(
		"n",
		"<Leader>dc",
		":lua require'dap'.continue()<CR>",
		{ silent = true, desc = "Debug Start/Continue" }
	),
}
