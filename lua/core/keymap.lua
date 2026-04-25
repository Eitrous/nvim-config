vim.g.mapleader = " "

local kmp = vim.keymap

-- INSERT
kmp.set("i", "jk", "<ESC>")

-- VISUAL
kmp.set("v", "J", ":m '>+1<CR>gv=gv")
kmp.set("v", "K", ":m '<-2<CR>gv=gv")

-- NORMAL
kmp.set("n", "<leader>sv", "<C-w>v")
kmp.set("n", "<leader>sh", "<C-w>s")

kmp.set("n", "<leader>nh", ":nohl<CR>")

-- Plugins
-- nvim-tree
kmp.set("n", "<leader>f", ":Neotree")

