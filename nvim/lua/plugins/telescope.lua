return {
    "nvim-telescope/telescope.nvim",
    lazy = false,
    dependencies = {
        'nvim-lua/plenary.nvim',
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    },
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
                file_ignore_patterns = {
                    ".git/",
                },
            },
        },
    },
}
