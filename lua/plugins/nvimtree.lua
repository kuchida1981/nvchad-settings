---@type NvPluginSpec[]
return {
  {
    "nvim-tree/nvim-tree.lua",
    opts = {
      filters = { dotfiles = true },
      view = { adaptive_size = true },
    },
  },
}
