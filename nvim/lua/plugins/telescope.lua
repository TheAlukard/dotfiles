return {
    "nvim-telescope/telescope.nvim",
    lazy = false,
    opts = {
        defaults = {
            mappings = {
                i = {
                    ["<Esc>"] = "close",
                },
            },
        },
        pickers = {
            find_files = {
                hidden = true,
                no_ignore = true,
            },
        },
    },
}
