local map  = vim.keymap.set
local del  = vim.keymap.del

map('t', '<Esc>', [[<C-\><C-n>]], {noremap=true})
map('n', '<C-p>', "\"+p", {noremap=true})
map('n', '<C-q>', "ZZ", {noremap=true})
del('n', 'j')
del('n', 'k')
map({'i', 'c', 't'}, "<C-backspace>", "<C-w>", {noremap=true})
vim.api.nvim_set_keymap("n", "<leader>h", "<CMD>:lua require('nvim-highlight-colors').toggle()<CR>", {})

require('neoterm').setup({
	clear_on_run = true,
	position = 'fullscreen',
	noinsert = false,
	width = 0.5,
	height = 1,
})

vim.api.nvim_set_keymap("i", "<C-/>", "<C-o>:NeotermToggle<CR>", {})
vim.api.nvim_set_keymap("t", "<C-/>", "<CMD>:NeotermToggle<CR>", {})
vim.api.nvim_set_keymap("n", "<C-/>", "<CMD>:NeotermToggle<CR>", {})
