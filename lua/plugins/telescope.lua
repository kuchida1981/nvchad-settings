---@type NvPluginSpec[]
return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      {
        "nvim-telescope/telescope-live-grep-args.nvim",
        version = "^1.0.0",
      },
      {
        "nvim-telescope/telescope-frecency.nvim",
        version = "*",
        config = function()
          require("telescope").load_extension "frecency"
        end,
      },
    },
    opts = function(_, conf)
      local lga_actions = require "telescope-live-grep-args.actions"
      conf.extensions = {
        live_grep_args = {
          auto_quoting = true,
          mappings = {
            i = {
              ["<C-k>"] = lga_actions.quote_prompt(),
              ["<C-i>"] = lga_actions.quote_prompt { postfix = " --iglob" },
            },
          },
        },
      }
      return conf
    end,
  },
}
