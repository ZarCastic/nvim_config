vim.g.mapleader = " "
vim.o.number = true
vim.o.relativenumber = true
vim.o.wrap = true
vim.o.expandtab = true
vim.o.incsearch = true
vim.o.tabstop = 2
vim.o.cursorline = true
vim.o.ignorecase = true
vim.o.hlsearch = true
vim.o.swapfile = false
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.scrolloff = 3
vim.o.errorbells = false
vim.o.shiftwidth = 2
vim.o.numberwidth = 4
vim.o.termguicolors = true
vim.o.colorcolumn = "80"
vim.o.showmode = false
vim.o.showtabline = 2
vim.o.signcolumn = "yes"
vim.o.mouse = "a"
vim.o.autoread = true
vim.o.autowrite = true
vim.o.completeopt = "menu,menuone,noselect"
vim.o.undofile = true
vim.o.winbar = "%{%v:lua.require'nvim-navic'.get_location()%}%=%m%F"
vim.o.syntax = true


vim.cmd[[au TextYankPost * silent! lua vim.highlight.on_yank()]]


