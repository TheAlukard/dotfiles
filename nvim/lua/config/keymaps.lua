local map  = vim.keymap.set
local del  = vim.keymap.del

vim.g.mapleader = " "
map('t', '<Esc>', [[<C-\><C-n>]], {noremap=true})
map('n', '<C-p>', "\"+p", {noremap=true})
map('n', '<C-q>', "ZZ", {noremap=true})
del('n', 'j')
del('n', 'k')
del('n', '<leader> ')
map({'i', 'c', 't'}, "<C-backspace>", "<C-w>", {noremap=true})
map("n", "<leader>h", "<CMD>:lua require('nvim-highlight-colors').toggle()<CR>", {})
map("i", "<C-/>", "<C-o>:NeotermToggle<CR>", {})
map("t", "<C-/>", "<CMD>:NeotermToggle<CR>", {})
map("n", "<C-/>", "<CMD>:NeotermToggle<CR>", {})
map("n", "<leader> ", require("telescope.builtin").find_files, {})
