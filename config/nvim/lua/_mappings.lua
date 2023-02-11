-- Leader key
vim.g.mapleader = ';'

-- Copy to system clipboard
vim.keymap.set('v', '<leader>y', '"+y')

-- Toggle relative/absolute line numbers
vim.keymap.set('n', '<C-L>', ':setlocal relativenumber!<cr>')

-- Window nav similar to i3 navigation
vim.keymap.set('n', '<C-J>', '<C-W><C-J>')
vim.keymap.set('n', '<C-K>', '<C-W><C-K>')
vim.keymap.set('n', '<C-L>', '<C-W><C-L>')
vim.keymap.set('n', '<C-H>', '<C-W><C-H>')

-- Double space over word to Subvert
vim.keymap.set('n', '<Space><Space>', ':%S/<C-r>=expand("<cword>")<CR>/')
-- Leader + space over word to find and replace
vim.keymap.set('n', '<leader><Space>', ':%s/<C-r>=expand("<cword>")<CR>/')

-- Reselect visual block after indent
vim.keymap.set('v', '<', '<gv')
vim.keymap.set('v', '>', '>gv')

-- LSP
vim.keymap.set('n', 'gd', vim.lsp.buf.definition)
vim.keymap.set('n', 'gD', vim.lsp.buf.declaration)
vim.keymap.set('n', 'gr', vim.lsp.buf.references)
vim.keymap.set('n', 'gi', vim.lsp.buf.implementation)
vim.keymap.set('n', 'sd', vim.diagnostic.open_float)
vim.keymap.set('n', 'sa', vim.lsp.buf.code_action)
vim.keymap.set('n', 'K', vim.lsp.buf.hover)
vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help)
vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename)
vim.keymap.set('n', '<leader>fos', function()
    if vim.b.format_on_save then
        vim.b.format_on_save = false
        print('Format on save disabled')
    else
        vim.b.format_on_save = true
        print('Format on save enabled')
    end
end)

vim.keymap.set('n', '<leader>xx', '<cmd>Trouble<cr>', { silent = true, noremap = true })
vim.keymap.set('n', '<leader>xw', '<cmd>Trouble workspace_diagnostics<cr>', { silent = true, noremap = true })
vim.keymap.set('n', '<leader>xd', '<cmd>Trouble document_diagnostics<cr>', { silent = true, noremap = true })
vim.keymap.set('n', '<leader>xl', '<cmd>Trouble loclist<cr>', { silent = true, noremap = true })
vim.keymap.set('n', '<leader>xq', '<cmd>Trouble quickfix<cr>', { silent = true, noremap = true })
vim.keymap.set('n', 'gR', '<cmd>Trouble lsp_references<cr>', { silent = true, noremap = true })
