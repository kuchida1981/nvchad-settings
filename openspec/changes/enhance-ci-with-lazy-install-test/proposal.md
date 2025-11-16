# Enhance CI with lazy-install test

**Type:** Feature
**Status:** Proposed
**Creation Date:** 2025-11-16
**Last Updated:** 2025-11-16

## Description

Currently, the CI process only performs static analysis using `luacheck`. This proposal suggests enhancing the CI to include a test that verifies the automatic installation of plugins by `lazy.nvim` upon Neovim's startup. This will help ensure that configuration changes do not break the core plugin installation mechanism.

## Rationale

Adding a `lazy.nvim` installation check to the CI pipeline will increase confidence in configuration changes. It prevents regressions where plugin setup might fail, which is something static analysis alone cannot catch. This ensures the Neovim configuration remains robust and functional.
