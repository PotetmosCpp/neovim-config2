vim.g.mapleader = " "

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

vim.opt.signcolumn = "yes"
vim.opt.scrolloff = 8

vim.opt.wrap = false
vim.opt.hlsearch = false

vim.opt.undofile = true
vim.opt.swapfile = false

vim.opt.autocomplete = true
-- almost works but i have to press C-x C-o for the lsp thing which is weird

vim.cmd.packadd("nvim.undotree")
