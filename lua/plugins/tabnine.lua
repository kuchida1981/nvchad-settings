return {
  {
    "codota/tabnine-nvim",
    lazy = false,
    dependencies = "tzachar/cmp-tabnine",
    build = "./dl_binaries.sh",
    config = function()
      require("tabnine").setup {
        disable_auto_comment = true,
        accept_keymap = "<S-Tab>",
        dismiss_keymap = "<C-]>",
        debounce_ms = 800,
        suggestion_color = { gui = "#808080", cterm = 244 },
        exclude_filetypes = { "TelescopePrompt", "NvimTree" },
        log_file_path = nil, -- absolute path to Tabnine log file
      }

      require("tabnine.status").status()
    end,
  },

  {
    "tzachar/cmp-tabnine",
    build = "./install.sh",
    dependencies = "hrsh7th/nvim-cmp",
    -- ft = { "python", "go" },
    config = function()
      require("cmp_tabnine.config"):setup {
        max_lines = 1000,
        max_num_results = 20,
        sort = true,
        run_on_every_keystroke = true,
        snippet_placeholder = "..",
        ignored_file_types = {
          vim = true,
        },
        show_prediction_strength = false,
      }
    end,
  },

  {
    "hrsh7th/nvim-cmp",
    opts = {
      sources = {
        { name = "nvim_lsp" },
        { name = "buffer" },
        { name = "path" },
        { name = "luasnip" },
        { name = "cmp_tabnine" },
      },
    },
  },
}
