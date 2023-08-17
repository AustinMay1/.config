local dap = require("dap")
local dapui = require("dapui")


vim.fn.sign_define(
    "DapBreakpoint",
    { text = "●", texthl = "", linehl = "debugBreakpoint", numhl = "debugBreakpoint" }
)
vim.fn.sign_define(
    "DapBreakpointCondition",
    { text = "◆", texthl = "", linehl = "debugBreakpoint", numhl = "debugBreakpoint" }
)
vim.fn.sign_define("DapStopped", { text = "▶", texthl = "", linehl = "debugPC", numhl = "debugPC" })
dap.defaults.fallback.force_external_terminal = true

dapui.setup({
    layouts = {
        {
            elements = {
                "watches",
                { id = "scopes", size = 0.5 },
                { id = "repl", size = 0.15 },
            },
            size = 79,
            position = "left",
        },
        {
            elements = {
                "console",
            },
            size = 0.25,
            position = "bottom",
        },
    },
    controls = {
        -- Requires Neovim nightly (or 0.8 when released)
        enabled = true,
        -- Display controls in this element
        element = "repl",
        icons = {
            pause = "",
            play = "",
            step_into = "",
            step_over = "",
            step_out = "",
            step_back = "",
            run_last = "↻",
            terminate = "□",
        },
    },
})
