function nmap(keys, command)
    vim.api.nvim_set_keymap('n', keys, command, {noremap = true, silent = true})
end

function vmap(keys, command)
    vim.api.nvim_set_keymap('v', keys, command, {noremap = true, silent = true})
end

-- Leader key
vim.g.mapleader = ';'

-- Copy to system clipboard
vmap('<leader>y', '"+y')

-- NvimTree
nmap('<C-N>', ':NvimTreeToggle<CR>')
nmap('<C-F>', ':NvimTreeFindFile<CR>')

-- Toggle relative/absolute line numbers
nmap('<C-L>', ':setlocal relativenumber!<cr>')

-- Telescope
nmap('<C-P>', ':Telescope find_files<CR>')
nmap('<C-G>', ':Telescope live_grep<CR>')
nmap('<C-B>', ':Telescope buffers<CR>')
nmap('<leader>fh', '<CMD>Telescope help_tags<CR>') -- Search help topics. Mnemonic: "fh for Find Help"

-- Window nav similar to i3 navigation
nmap('<C-J>', '<C-W><C-J>')
nmap('<C-K>', '<C-W><C-K>')
nmap('<C-L>', '<C-W><C-L>')
nmap('<C-H>', '<C-W><C-H>')

-- LSP
nmap('gd', '<cmd>lua vim.lsp.buf.definition()<CR>')
nmap('gD', '<cmd>lua vim.lsp.buf.declaration()<CR>')
nmap('gr', '<cmd>lua vim.lsp.buf.references()<CR>')
nmap('gi', '<cmd>lua vim.lsp.buf.implementation()<CR>')
nmap('K', '<cmd>lua vim.lsp.buf.hover()<CR>')
nmap('<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>')
nmap('<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>')

nmap('<leader>S', "<cmd>lua require('spectre').open()<CR>")
nmap('<leader>sw', "<cmd>lua require('spectre').open_visual({select_word=true})<CR>")
vmap('<leader>s', "<cmd>lua require('spectre').open_visual()<CR>")
nmap('<leader>sp', "<cmd>lua require('spectre').open_file_search()<cr>")
