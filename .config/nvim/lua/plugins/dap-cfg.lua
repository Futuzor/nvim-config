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

        --[[require("dap-vscode-js").setup({
            --node_path = "~/.bun/bin/bun", -- Path of node executable. Defaults to $NODE_PATH, and then "node"
            --debugger_path = vim.fn.stdpath('data') .. "/lazy/vscode-js-debug", -- Path to vscode-js-debug installation.
            debugger_cmd = { "js-debug-adapter" }, -- Command to use to launch the debug server. Takes precedence over `node_path` and `debugger_path`.
              adapters = { "pwa-node" },
            --adapters = { "pwa-node", "pwa-chrome", "pwa-msedge", "node-terminal", "pwa-extensionHost" }, -- which adapters to register in nvim-dap
        })]]
        --

        dap.adapters["pwa-node"] = {
            type = "server",
            host = "127.0.0.1",
            port = 8123,
        }

        dap.adapters["pwa-chrome"] = {
            type = "server",
            host = "127.0.0.1",
            port = 8124,
        }

        dap.adapters["pwa-msedge"] = {
            type = "server",
            host = "127.0.0.1",
            port = 8125,
        }

        for _, language in ipairs({ "typescript", "javascript", "typescriptreact" }) do
            dap.configurations[language] = {
                {
                    type = "pwa-node",
                    request = "launch",
                    name = "Launch file",
                    program = "${file}",
                    sourceMaps = true,
                    cwd = vim.fn.getcwd(),
                    runtimeExecutable = "ts-node",
                },
                {
                    type = "pwa-chrome",
                    request = "launch",
                    name = "Launch file",
                    program = "${file}",
                    sourceMaps = true,
                    cwd = vim.fn.getcwd(),
                    runtimeExecutable = "ts-node",
                },
                {
                    type = "pwa-msedge",
                    request = "launch",
                    name = "Launch file",
                    program = "${file}",
                    sourceMaps = true,
                    cwd = vim.fn.getcwd(),
                    runtimeExecutable = "ts-node",
                },
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
