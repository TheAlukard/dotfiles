local opt = vim.opt
local glob = vim.g

opt.expandtab = false
opt.shiftwidth = 4
opt.smartindent = true
opt.tabstop = 4
opt.softtabstop = 2
opt.relativenumber = true
opt.wrap = true
opt.shell = "zsh"
opt.hidden = true

opt.fillchars = { eob = " " }
opt.ignorecase = true
opt.smartcase = true
opt.mouse = "a"
glob.autoformat = false
