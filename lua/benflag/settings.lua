local g = vim.g
local o = vim.opt

-- General

-- UI
o.number = true
o.relativenumber = true
o.ignorecase = true
o.smartcase = true
o.hlsearch = true
o.wrap = true
o.laststatus = 3

-- Indent
o.breakindent = true
o.expandtab = true
o.smartindent = true
o.tabstop = 2
o.shiftwidth = 2

-- Disabling NETRW
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1
