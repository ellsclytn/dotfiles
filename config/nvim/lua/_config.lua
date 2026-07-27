-- Configuration of things that ship with Neovim (no plugin config)

-- Leader key
-- lazy.nvim requires this to be configured before loading plugins
-- Other mappings are kept separate because which-key.nvim is used with them
vim.g.mapleader = ';'

-- Allow hiding buffers with unsaved changes
vim.opt.hidden = true
-- Show absolute line number at cursor position
vim.opt.number = true
-- Show relative line numbers
vim.opt.relativenumber = true
-- Show cursor position
vim.opt.ruler = true

-- Use spaces instead of tabs
vim.opt.expandtab = true
-- Be smart when using tabs ;-)
vim.opt.smarttab = true
-- 1 tab is 2 spaces
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.backspace = 'indent,eol,start'

-- Avoid case-sensitive search (except when explictly set, or when using mixed case queries)
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Leave a bit of space when scrolling
vim.opt.scrolloff = 8
