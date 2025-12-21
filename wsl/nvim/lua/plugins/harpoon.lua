return {
    'ThePrimeagen/harpoon',
    keys = {
        {
            "<C-m>",
            function() require("harpoon.mark").add_file() end,
        },
        {
            "<C-n>",
            function() require("harpoon.ui").toggle_quick_menu() end,
        },
    },
}
