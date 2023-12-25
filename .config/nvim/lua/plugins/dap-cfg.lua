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
        local vt = require("nvim-dap-virtual-text")

        dapui.setup()
        vt.setup()

        -- DAP-UI
        dap.listeners.after.event_initialized["dapui_config"] = function()
            dapui.open()
        end
        dap.listeners.before.event_terminated["dapui_config"] = function()
            dapui.close()
        end
        dap.listeners.before.event_exited["dapui_config"] = function()
            dapui.close()
        end

        require("dap-python").setup("/usr/bin/python3")

        require("dap-vscode-js").setup({
            node_path = "~/.bun/bin/bun", -- Path of node executable. Defaults to $NODE_PATH, and then "node"
            debugger_path = "~/.dap/vscode-js-debug", -- Path to vscode-js-debug installation.
            --debugger_cmd = { "vsDebugServer" }, -- Command to use to launch the debug server. Takes precedence over `node_path` and `debugger_path`.
            adapters = { "pwa-node" },
            --adapters = { "pwa-node", "pwa-chrome", "pwa-msedge", "node-terminal", "pwa-extensionHost" }, -- which adapters to register in nvim-dap
        })

        for _, language in ipairs({ "typescript", "javascript" }) do
            dap.configurations[language] = {
                {
                    type = "pwa-node",
                    request = "launch",
                    name = "Launch file",
                    program = "${file}",
                    cwd = vim.fn.getcwd(),
                    runtimeExecutable = "bun",
                    runtimeArgs = { "run", "--inspect-brk" },
                    attachSimplePort = "4200",
                },
                --[[{
						type = "pwa-node",
						request = "attach",
						name = "Attach",
						processId = require("dap.utils").pick_process,
						cwd = "${workspaceFolder}",
					},]]
            }
        end

        -- KEYMAPS
        vim.keymap.set(
            "n",
            "<Leader>db",
            ":DapToggleBreakpoint<cr>",
            { silent = true, desc = "Añadir punto de ruptura" }
        )
        vim.keymap.set("n", "<Leader>dc", ":DapContinue<cr>", { silent = true, desc = "Comenzar depuración" })
    end,
}
