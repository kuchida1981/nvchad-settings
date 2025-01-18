return {
  {
    "nvim-tree/nvim-tree.lua",
    cmd = { "NvimTreeToggle", "NvimTreeFocus" },
    opts = vim.tbl_extend("force", require "nvchad.configs.nvimtree", {
      filters = { dotfiles = true },
    }),
  },
}
