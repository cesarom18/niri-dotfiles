-- Set File Explore Banner
vim.cmd("let g:netrw_banner = 0")
-- Set Block Cursor
vim.opt.guicursor = ""
-- Set Absolute Numbers
vim.opt.nu = true
-- Set Relative Numbers
vim.opt.relativenumber = true
-- Set Tab Identation
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true
-- Set Wrap
vim.opt.wrap = false
-- Set Swapfile (Save Current Session Temporaly)
vim.opt.swapfile = false
-- Set Backup (Create Copy Of Last Saved File)
vim.opt.backup = false
-- Set Undofile (Save Undo History)
vim.opt.undofile = true
-- Set Search Options
vim.opt.incsearch = true
vim.opt.inccommand = "split"
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true
-- Set UI / Visuals
vim.opt.termguicolors = true
vim.opt.background = "dark"
vim.opt.scrolloff = 8
vim.opt.colorcolumn = ""
vim.opt.signcolumn = "yes"
vim.opt.backspace = { "start", "eol", "indent" }
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.mouse = "a"
-- Set Valid Characters Filename
vim.opt.isfname:append("@-@")
-- Set Update Time
vim.opt.updatetime = 50
-- Set Clipboard
vim.opt.clipboard:append("unnamedplus")
-- Set Editor Config File (Global Rules For Editors)
vim.g.editorconfig = true
