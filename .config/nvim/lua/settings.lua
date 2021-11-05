local fn = vim.fn
local g = vim.g
local opt = vim.opt

g.mapleader = ' '
g.indentLine_char = '¦'

opt.mouse = 'a'
opt.clipboard = 'unnamedplus'
opt.swapfile = false

opt.number = true
opt.rnu = true
opt.showmatch = true
opt.foldmethod = 'syntax'
opt.splitright = true
opt.splitbelow = true

opt.cursorline = true

opt.hidden = true
opt.history = 1000
opt.lazyredraw = true
opt.synmaxcol = 240

opt.expandtab = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.smartindent = true

opt.completeopt = 'menuone,noselect,noinsert'

