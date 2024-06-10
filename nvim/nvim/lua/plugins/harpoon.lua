return {
    'ThePrimeagen/harpoon',
    keys = {
        {
            "<C-m>",
            function() require("harpoon.mark").add_file() end,
        },
        {
            "<C-h>",
            function() require("harpoon.ui").toggle_quick_menu() end,
        },
    },
}

