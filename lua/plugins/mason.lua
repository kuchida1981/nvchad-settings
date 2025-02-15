---@type NvPluginSpec[]
return {
  "williamboman/mason.nvim",
  opts = {
    ensure_installed = {
      -- python
      "pyright",
      "black",
      "isort",
      "autopep8",

      -- golang
      "gopls",
      "goimports",

      -- sql
      "sqlfmt",

      "prettier",
      "graphql-language-service-cli",
      "typescript-language-server",
    },
  },
}
