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
    },
    keys = {
        {
            "<leader><space>",
            function()
                require("telescope.builtin").find_files()
            end,
        },
    },
}
