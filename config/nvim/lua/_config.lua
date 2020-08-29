-- Configuration of things that ship with Neovim (no plugin config)

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
