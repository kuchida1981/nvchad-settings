require "nvchad.mappings"

local map = vim.keymap.set
local nomap = vim.keymap.del

map("i", "jk", "<ESC>")
nomap("i", "<C-h>")
