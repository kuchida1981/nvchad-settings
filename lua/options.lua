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
if vim.fn.executable('rg') == 1 then
	opt.grepprg = "rg --vimgrep --no-heading"
	opt.grepformat = "%f:%l:%c:%m,%f:%l:%m"
else
	opt.grepprg = "grep -rnHI"
end

-- python
g.loaded_python3_provider = 1
g.python3_host_prog = os.getenv("PYENV_ROOT") .. "/versions/neovim/bin/python"
