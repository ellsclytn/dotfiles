vim.g.strip_whitespace_on_save = 1
vim.g.strip_whitespace_confirm = 0

return {
    'ntpeters/vim-better-whitespace',
    event = 'InsertEnter',
}
