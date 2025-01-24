require "nvchad.options"

local opt = vim.opt
local g = vim.g

-- basics
opt.wrap = false
opt.cursorline = true
opt.shell = "fish"
opt.wildignore:remove("*/tmp/*")
opt.background = "dark"
opt.termguicolors = true

-- history
opt.history = 1000

-- grep
opt.grepprg = "grep -rnHI"

-- python
g.loaded_python3_provider = 1
g.python3_host_prog = os.getenv("PYENV_ROOT") .. "/versions/neovim/bin/python"
