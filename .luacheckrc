-- NvChad configuration specific settings
std = "luajit"
globals = {
  "vim", -- Neovim global
}
read_globals = {
  -- NvChad specific globals
  "require",
  "package",
  "dofile",
  "os",
}

ignore = {
  "112", -- Mutating argument of setmetatable
  "113", -- Accessing undefined variable
  "211", -- Unused local variable (common in config files)
  "212", -- Unused argument (common in callback functions)
  "213", -- Unused loop variable
}

-- Exclude lazy-lock.json and other non-lua files
exclude_files = {
  "lazy-lock.json",
  "lazy-lock.json.orig",
}

-- File-specific overrides
files = {
  ["lua/plugins/*.lua"] = {
    -- Plugin files can return tables without assignment
    ignore = {"211", "212", "213", "311", "312"},
  },
  ["lua/configs/*.lua"] = {
    -- Config files often have unused variables
    ignore = {"211", "212", "213"},
  },
}
