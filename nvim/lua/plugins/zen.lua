return {
    "sand4rt/zen.nvim",
    lazy = false,
    enabled = false,
    opts = {
        main = {
            width = 148, -- or vim.wo.colorcolumn
        },
        -- TIP: find a buffer's filetype with :lua print(vim.bo.filetype)
        top = {
            { filetype = "man" },
            { filetype = "help" },
            { filetype = "fugitive" },
        },
        right = {
            min_width = 46,
            { filetype = "copilot-chat" },
            { filetype = "neotest-summary" },
            { filetype = { "dapui_watches", "dapui_scopes", "dapui_stacks", "dapui_breakpoints" } },
        },
        bottom = {
            { filetype = "dap-repl" },
            { filetype = "qf" },
            { filetype = "trouble" },
            { filetype = "noice" }, -- noice opens large notifications in a buffer
        },
        left = {
            min_width = 46,
            { filetype = "fugitiveblame" },
            { filetype = "fyler" },
            { filetype = "neotree" },
            { filetype = "dbui" },
            { filetype = { "undotree", "diff" } },
        },
    },
}
