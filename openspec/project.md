# Project Context

## Purpose
This project contains the personal Neovim configuration based on the NvChad framework. The primary goal is to customize and extend the default NvChad setup to suit specific development workflows and preferences.

## Tech Stack
- **Language**: Lua
- **Editor / Environment**: Neovim
- **Base Framework**: NvChad
- **Plugin Manager**: lazy.nvim

## Project Conventions

### Code Style
- **Formatting**: Code is formatted using `stylua`. The configuration is defined in `.stylua.toml`.
- **Linting**: Code is linted using `luacheck`. The configuration is defined in `.luacheckrc`.

### Architecture Patterns
The project adheres to the standard NvChad customization structure:
- `lua/chadrc.lua` is the main entry point for overriding default settings and loading custom configurations.
- Custom plugin configurations are placed in the `lua/plugins/` directory.
- Core customizations are separated into logical files:
  - `lua/mappings.lua` for keyboard shortcuts.
  - `lua/autocmds.lua` for event-driven actions.
  - `lua/options.lua` for editor settings.

### Testing Strategy
- Continuous integration is set up via GitHub Actions (`.github/workflows/test.yml`).
- On every pull request, a `luacheck` job runs to perform static analysis and ensure code quality. No automated functional or unit tests are currently implemented.

### Git Workflow
- Follow a standard feature-branch workflow.
- Commits should be atomic and have clear, descriptive messages.

## Domain Context
This project configures the Neovim text editor. An AI assistant working on this project should be familiar with the following concepts:
- **NvChad**: The base configuration framework this project is built upon.
- **lazy.nvim**: The plugin manager used to handle Neovim plugins.
- **Plugins**: Extensions that add functionality. The full list is managed in `lua/plugins/init.lua` and locked in `lazy-lock.json`.
- **Mappings**: Custom keyboard shortcuts.
- **Autocmds**: Commands triggered by events within Neovim.
- **Options**: Neovim's internal settings.

## Important Constraints
- All customizations must be compatible with the NvChad framework and its expected structure.
- Plugin versions are pinned using `lazy-lock.json` to ensure reproducible and stable behavior.

## External Dependencies
- The core dependency is the NvChad framework.
- All other external dependencies are Neovim plugins, which are managed by the `lazy.nvim` plugin manager.