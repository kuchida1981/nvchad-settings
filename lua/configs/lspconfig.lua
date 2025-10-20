-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "pyright", "ruff", "gopls", "awk_ls", "graphql", "ts_ls" }
vim.lsp.enable(servers)
