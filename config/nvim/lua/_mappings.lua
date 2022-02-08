function nmap(keys, command)
    vim.api.nvim_set_keymap('n', keys, command, {noremap = true, silent = true})
end

function vmap(keys, command)
    vim.api.nvim_set_keymap('v', keys, command, {noremap = true, silent = true})
end

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
