# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a personal NvChad configuration repository that serves as a Neovim configuration built on top of the NvChad framework. The configuration uses lazy.nvim as the plugin manager and includes various productivity plugins, formatters, and LSP configurations.

## Commands

### Formatting and Linting
- `stylua .` - Format Lua files using the configuration in `.stylua.toml`
- `luacheck .` - Lint Lua files using configuration in `.luacheckrc`

### Development Environment Setup
The repository expects a specific Python environment setup for Neovim integration:
1. Install Python 3.13.1 via pyenv: `pyenv install 3.13.1`
2. Create neovim virtual environment: `pyenv virtualenv 3.13.1 neovim`
3. Install pynvim: `pyenv shell neovim && pip install pynvim`

### Neovim Commands
- `nvim` - Start Neovim (will auto-install plugins on first run)
- `:checkhealth` - Verify Neovim configuration and dependencies
- `:Lazy` - Manage plugins via lazy.nvim

## Architecture

### Core Structure
- `init.lua` - Entry point that bootstraps lazy.nvim and loads core modules
- `lua/chadrc.lua` - NvChad configuration (theme, UI settings)
- `lua/options.lua` - Neovim options and global settings
- `lua/mappings.lua` - Custom key mappings

### Plugin System
- Uses lazy.nvim for plugin management with lazy loading
- Main NvChad plugin is imported as a dependency (`"NvChad/NvChad"` branch v2.5)
- Custom plugins are defined in `lua/plugins/` directory
- Each plugin file returns a table following the NvPluginSpec format

### Configuration Pattern
- Most configurations follow the pattern: `lua/plugins/[name].lua` defines the plugin spec
- Some plugins reference configurations in `lua/configs/[name].lua`
- Plugin options are typically defined using the `opts` key or `config` function

### Key Plugins and Features
- **Telescope**: Enhanced with live-grep-args and frecency extensions
- **Conform.nvim**: Code formatting for multiple languages (Lua, Python, Go, etc.)
- **LSP**: Configured for multiple languages via `lspconfig`
- **ClaudeCode**: AI-powered coding assistant with custom keybindings under `<leader>a`

### Formatter Configuration
Located in `lua/configs/conform.lua`:
- Lua: stylua
- Python: isort + ruff_format  
- Go: gofmt + goimports
- SQL: sqlfmt
- Fish: fish_indent
- And others for various file types

### LSP Configuration
Located in `lua/configs/lspconfig.lua`:
- Configured servers: html, cssls, pyright, ruff, gopls, awk_ls, graphql, ts_ls
- Uses NvChad's default LSP configuration for consistent behavior

## File Patterns
- Plugin definitions: `lua/plugins/*.lua` - Return NvPluginSpec tables
- Plugin configs: `lua/configs/*.lua` - Return configuration tables  
- Core modules: `lua/*.lua` - Direct requires for core functionality

## Python Integration
- Uses pyenv with a dedicated "neovim" virtual environment
- Python path is dynamically set using PYENV_ROOT environment variable
- Required for various Python-based plugins and LSP servers