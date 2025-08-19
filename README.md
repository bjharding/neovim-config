# nixCats Neovim Configuration

A modern, modular Neovim configuration built with [nixCats](https://github.com/BirdeeHub/nixCats-nvim) and [lze](https://github.com/BirdeeHub/lze) for efficient lazy loading. This configuration provides a complete development environment with LSP support, formatting, linting, and modern editing features.

## ✨ Features

### 🚀 Core Features
- **Lazy Loading**: Uses `lze` for efficient plugin loading
- **Modular Design**: Clean separation of concerns across multiple files
- **Nix Integration**: Declarative package management with nixCats
- **Fallback Support**: Works without Nix using Mason and Paq

### 🛠️ Development Tools
- **LSP Support**: Full language server integration with `nvim-lspconfig`
- **Code Completion**: Advanced completion with `nvim-cmp`
- **Fuzzy Finding**: Telescope integration for files, buffers, and symbols
- **Syntax Highlighting**: TreeSitter for modern syntax highlighting
- **Git Integration**: Lazygit integration with floating terminal
- **Formatting**: Conform.nvim for consistent code formatting
- **Linting**: nvim-lint for real-time code analysis

### 📋 Language Support

| Language | LSP | Formatter | Linter | Status |
|----------|-----|-----------|--------|--------|
| **Lua** | `lua_ls` | - | - | ✅ Full Support |
| **Python** | `basedpyright` | `ruff` | `ruff` | ✅ Full Support |
| **Protobuf** | `protols` | `buf` | - | ✅ Full Support |
| **Nix** | `nixd` | `nixfmt` | - | ✅ Full Support |
| **Go** | `gopls` | - | - | 🔧 Available (disabled) |

## 🚀 Quick Start

### With Nix Flakes
```bash
# Clone the repository
git clone <your-repo-url> ~/.config/nixCats-nvim
cd ~/.config/nixCats-nvim

# Build and run
nix run .#nixCats
```

### Development Shell
```bash
# Enter development environment
nix develop

# Build configuration
nix build .#nixCats
```

### Without Nix
The configuration includes fallbacks using Mason and Paq when Nix is not available.

## 📁 Project Structure

```
├── flake.nix                    # Nix flake configuration
├── init.lua                     # Entry point
├── lua/
│   ├── myLuaConf/
│   │   ├── init.lua            # Core configuration
│   │   ├── opts_and_keys.lua   # Options and keymaps
│   │   ├── LSPs/
│   │   │   ├── init.lua        # LSP configurations
│   │   │   └── on_attach.lua   # LSP attach handler
│   │   ├── plugins/
│   │   │   ├── init.lua        # Plugin specifications
│   │   │   ├── completion.lua  # Completion setup
│   │   │   ├── telescope.lua   # Fuzzy finder
│   │   │   └── treesitter.lua  # Syntax highlighting
│   │   ├── format.lua          # Code formatting
│   │   ├── lint.lua            # Code linting
│   │   └── debug.lua           # Debug configuration
│   └── nixCatsUtils/           # Utility functions
└── after/
    └── plugin/
        └── colors.lua          # Color scheme
```

## ⚙️ Configuration

### Categories System
The configuration uses nixCats' category system to conditionally enable features:

- **`general`**: Core editing features and essential plugins
- **`python`**: Python development (basedpyright, ruff)
- **`protobuf`**: Protocol buffer support (protols, buf)
- **`neonixdev`**: Nix development tools (nixd, lua_ls)
- **`format`**: Code formatting capabilities
- **`lint`**: Code linting and analysis
- **`markdown`**: Markdown editing support

### Key Bindings

| Key | Action | Mode |
|-----|--------|------|
| `<leader>ff` | Find files | Normal |
| `<leader>fg` | Live grep | Normal |
| `<leader>fb` | Find buffers | Normal |
| `<leader>fh` | Help tags | Normal |
| `<leader>FF` | Format file | Normal/Visual |
| `<leader>lg` | Open Lazygit | Normal |
| `gd` | Go to definition | Normal |
| `gr` | Go to references | Normal |
| `K` | Hover documentation | Normal |
| `<leader>ca` | Code actions | Normal |

## 🔧 Customization

### Adding a New Language

1. **Add tools to flake.nix**:
```nix
mylang = with pkgs; [
  mylang-lsp
  mylang-formatter
];
```

2. **Enable the category**:
```nix
categories = {
  mylang = true;
  # ... other categories
};
```

3. **Configure LSP**:
```lua
{
  "mylang-lsp",
  for_cat = "mylang",
  lsp = {
    filetypes = { "mylang" },
    settings = {
      -- LSP settings
    },
  },
},
```

4. **Add formatting**:
```lua
mylang = { "mylang-formatter" },
```

### Theming
The configuration uses Catppuccin Mocha by default. Change the theme in `flake.nix`:
```nix
(builtins.getAttr (categories.colorscheme or "onedark") {
```

## 🏗️ Building

### Available Packages
- `nixCats`: Full-featured configuration
- `regularCats`: Alternative build target

### Build Commands
```bash
# Build main configuration
nix build .#nixCats

# Build alternative configuration  
nix build .#regularCats

# Update dependencies
nix flake update
```

## 🤝 Contributing

This configuration serves as a template and starting point. Feel free to:
- Fork and customize for your needs
- Submit improvements via pull requests
- Report issues or suggest features

## 📚 Resources

- [nixCats Documentation](https://nixcats.org/)
- [lze Plugin Manager](https://github.com/BirdeeHub/lze)
- [Neovim Documentation](https://neovim.io/doc/)

## 📄 License

This configuration is based on the nixCats example and follows the same licensing terms.

---

*This configuration demonstrates the power of Nix for reproducible, declarative Neovim setups while maintaining the flexibility to work without Nix when needed.*