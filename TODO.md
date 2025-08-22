# nixCats Neovim Configuration TODO

## 🎨 UI/UX Enhancements
- [ ] **Add status column improvements** - Use `statuscolumn` with git signs, line numbers, folds
- [ ] **Enhance lualine** - Add more modules (git branch, diagnostics, LSP status)
- [ ] **Add winbar support** - Show file path/breadcrumbs in window title bar
- [ ] **Improve which-key configuration** - Better key descriptions and groupings
- [ ] **Add zen mode plugin** - Distraction-free coding (zen-mode.nvim)
- [ ] **Enhanced colorscheme switching** - Quick theme toggler with preview
- [ ] **Add mini.indentscope** - Better indent scope highlighting

## 📂 File Management & Navigation
- [ ] **Oil.nvim enhancements** - Add git status integration, more columns (mtime, type)
- [ ] **Add oil-git-status.nvim** - Git indicators in oil file browser
- [ ] **Improve oil keymaps** - Copy path, create files with templates
- [ ] **Add session management** - Auto-session or possession.nvim
- [ ] **Enhanced telescope** - More pickers (colorschemes, commands, help)
- [ ] **Add harpoon** - Quick file switching for frequently used files
- [ ] **File templates** - Automatic file templates based on extensions

## ⚡ Performance & Efficiency
- [ ] **Enable debug category** - Full debugging support with nvim-dap
- [ ] **Add more language servers** - JSON, YAML, TOML, CSS, HTML support
- [ ] **Improve completion** - Better blink.cmp configuration, more sources
- [ ] **Add code actions menu** - Better LSP code actions UI
- [ ] **Smart splits** - Better window management (smart-splits.nvim)
- [ ] **Add trouble.nvim** - Better diagnostics/quickfix UI
- [ ] **Enhance treesitter** - More text objects, better highlighting

## 🔧 Development Tools
- [ ] **Git integration improvements** - Add lazygit, better fugitive setup
- [ ] **Add diffview.nvim** - Better git diff visualization
- [ ] **Terminal integration** - toggleterm.nvim for better terminal management  
- [ ] **Add REST client** - rest.nvim for API testing
- [ ] **Database integration** - vim-dadbod for database queries
- [ ] **Add project management** - project.nvim for better project switching
- [ ] **Code outline** - aerial.nvim or symbols-outline.nvim

## 📝 Writing & Documentation  
- [ ] **Improve markdown** - Add markdown-toc, better preview setup
- [ ] **Add note-taking** - obsidian.nvim or telekasten.nvim integration
- [ ] **Spell checking** - Better spell configuration, dictionary management
- [ ] **Add grammar checking** - languagetool integration
- [ ] **Documentation generation** - neogen for auto-generating docs
- [ ] **Add wiki/knowledge base** - vimwiki or similar

## 🎯 Language-Specific Improvements
- [ ] **Python enhancements** - Add pytest integration, virtual env detection
- [ ] **Go development** - Add more Go-specific tools and debugging
- [ ] **Nix development** - Better nix formatting, evaluation tools
- [ ] **JavaScript/TypeScript** - Add eslint, prettier, testing frameworks
- [ ] **Rust support** - rustaceanvim, better cargo integration
- [ ] **Docker/Kubernetes** - Dockerfile syntax, k8s yaml support

## 🔌 Plugin Categories to Enable
- [ ] **Enable format category** - Activate conform.nvim formatting
- [ ] **Enable lint category** - Activate nvim-lint linting  
- [ ] **Enable debug category** - Full debugging support
- [ ] **Add testing category** - neotest.nvim for test running
- [ ] **Add AI category** - copilot.vim or similar AI assistance

## ⌨️ Keybinding & Workflow
- [ ] **Improve oil keybinds** - Add more file operations (copy path, templates)
- [ ] **Add leader key groups** - Better which-key organization
- [ ] **Quick action keybinds** - Format on save, quick diagnostics
- [ ] **Add hydra menus** - For complex multi-step operations
- [ ] **Custom text objects** - More treesitter text objects
- [ ] **Improve visual mode** - Better visual selections and operations

## 🔒 Safety & Reliability  
- [ ] **Add file backup** - Better backup/undo configuration
- [ ] **Session persistence** - Automatic session restoration
- [ ] **Add auto-save** - Smart auto-saving for certain file types
- [ ] **Improve error handling** - Better plugin error recovery
- [ ] **Add health checks** - Custom health checks for your setup

## 🚀 Advanced Features
- [ ] **Add custom commands** - Useful utility commands
- [ ] **Improve nixCats integration** - Better category management
- [ ] **Add custom highlighting** - Language-specific improvements
- [ ] **Plugin development** - Setup for creating your own plugins
- [ ] **Add profiling tools** - Better startup time analysis
- [ ] **Custom autocmds** - More automation and smart behaviors

## 🔗 Integration & Workflow
- [ ] **Better git workflow** - Integrate with GitHub/GitLab CLIs
- [ ] **Add CI/CD integration** - Show build status, run tests
- [ ] **Docker integration** - Container development support  
- [ ] **Add remote development** - SSH/container editing support
- [ ] **Improve terminal workflow** - Better shell integration

## ✅ Recently Completed
- [x] **Enhanced oil.nvim floating window** - Added dynamic title, transparency, smart preview
- [x] **Consolidated oil keybinds** - Single `<leader>o` keybind for floating window
- [x] **Added snacks.nvim dashboard** - (Reverted due to lazy.nvim conflicts)
- [x] **Fixed nvim-ufo deprecation** - Updated to `close_fold_kinds_for_ft`
- [x] **Added hardtime.nvim** - Motion improvement tool
- [x] **Enhanced markdown support** - Added markdown-oxide LSP, bullets.vim, preview