local map = vim.keymap.set

map('t', '<Esc>', [[<C-\><C-n>]], {noremap=true})
map('n', '<C-c>', "\"+y", {noremap=true})
map('n', '<C-p>', "\"+p", {noremap=true})
map('n', '<C-q>', "ZZ", {noremap=true})
map('n', '<C-A-q>', "ZQ", {noremap=true})
