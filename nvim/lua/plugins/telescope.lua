return {
    "nvim-telescope/telescope.nvim",
    opts = {
        defaults = {
            mappings = {
                i = {
                    ["<Esc>"] = "close", -- preferred simple form
                },
            },
        },
    },
    keys = {
        {
            "<leader> ",
            function()
                require("telescope.builtin").find_files()
            end,
        },
    },
}
