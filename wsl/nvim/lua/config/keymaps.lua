local map  = vim.keymap.set
local del  = vim.keymap.del

map('t', '<Esc>', [[<C-\><C-n>]], {noremap=true})
map('n', '<C-p>', "\"+p", {noremap=true})
map('n', '<C-q>', "ZZ", {noremap=true})
del('n', 'j')
del('n', 'k')
map({'i', 'c', 't'}, "<C-H>", "<C-w>", {noremap=true})

require('neoterm').setup({
	clear_on_run = true,
	position = 'fullscreen',
	noinsert = false,
	width = 0.5,
	height = 1,
})

vim.api.nvim_set_keymap("i", "<C-_>", "<C-o>:NeotermToggle<CR>", {})
vim.api.nvim_set_keymap("t", "<C-_>", "<CMD>:NeotermToggle<CR>", {})
vim.api.nvim_set_keymap("n", "<C-_>", "<CMD>:NeotermToggle<CR>", {})
