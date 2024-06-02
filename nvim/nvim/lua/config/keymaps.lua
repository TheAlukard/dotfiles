local map = vim.keymap.set

vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]],{noremap=true})
vim.keymap.set('n', '<C-c>', "\"+y",{noremap=true})
vim.keymap.set('n', '<C-p>', "\"+p",{noremap=true})
vim.keymap.set('n', '<C-q>', "ZZ",{noremap=true})
vim.keymap.set('n', '<C-A-q>', "ZQ",{noremap=true})
