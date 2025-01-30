require "nvchad.mappings"

local map = vim.keymap.set
local nomap = vim.keymap.del

map("i", "jk", "<ESC>")
nomap("i", "<C-h>")

-- telescope-live-grep-args.nvim
map("n", "<leader>fg", "<cmd>Telescope live_grep_args<CR>", { desc = "telescope live grep args" })
