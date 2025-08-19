# Agent Guidelines for nixCats Neovim Configuration

## Build/Development Commands
This is a nixCats-based Neovim configuration managed via Nix flakes.
- Build: `nix build` or `nix develop` to enter dev shell
- Run: `nix run` or use the built package directly
- Test plugins: No formal test suite - test by running the configuration
- Rebuild after changes: `nix build .#nixCats` or `nix build .#regularCats`

## Code Style & Structure
- **Language**: Lua only (no Vimscript)
- **Module system**: Use `require()` for all imports, organized in `lua/myLuaConf/`
- **Plugin management**: Uses `lze` for lazy loading, NOT lazy.nvim or paq
- **Categories**: Use `nixCats('category.name')` to conditionally enable features
- **Formatting**: 2-space indentation, no trailing whitespace
- **Comments**: Use `-- NOTE:` for important comments, regular `--` for others
- **Keymaps**: Define with full `vim.keymap.set()`, include descriptions
- **Functions**: Local functions preferred, avoid global namespace pollution

## Plugin Configuration
- Use `lze.load {}` specs in plugin files under `lua/myLuaConf/plugins/`
- Enable plugins conditionally with `for_cat = 'category.name'`
- Configure plugins in `after = function(plugin)` blocks
- Avoid `lazy.nvim` patterns - this uses `lze` exclusively

## Nix Integration
- Plugins defined in `flake.nix` under `categoryDefinitions`
- LSPs and tools in `lspsAndRuntimeDeps` section
- Use `nixCats()` function to query enabled categories/features
- Configuration works with/without Nix via fallback in `non_nix_download.lua`