vim.g.mapleader = " "
vim.g.maplocalleader = " "

local opt = vim.opt

opt.number = true
opt.relativenumber = true
opt.mouse = "a"
opt.clipboard = "unnamedplus"
opt.ignorecase = true
opt.smartcase = true
opt.signcolumn = "yes"
opt.termguicolors = true
opt.updatetime = 250
opt.timeoutlen = 300
opt.splitright = true
opt.splitbelow = true
opt.scrolloff = 8
opt.sidescrolloff = 8
opt.wrap = false
opt.expandtab = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.smartindent = true
-- 开启超长行自动折行显示（默认就是 true，显式写出来更清晰）
opt.wrap = true
-- 尽量在单词/标点边界处折行，而不是把一个单词硬生生劈成两半（对英文/代码更友好）
opt.linebreak = true
-- 行后的续行保留缩进，阅读层级更清楚
opt.breakindent = true
