return {
    'nvim-telescope/telescope.nvim',
    dependencies = {
        'nvim-lua/plenary.nvim',
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    },
    config = function()
        local telescope = require('telescope')

        telescope.setup({
            defaults = {
                vimgrep_arguments = {
                    'rg',
                    '--color=never',
                    '--no-heading',
                    '--with-filename',
                    '--line-number',
                    '--column',
                    '--smart-case',
                    '--hidden',
                },
                file_ignore_patterns = {
                    'dist/.*',
                    '%.git/.*',
                    '%.vim/.*',
                    'node_modules/.*',
                },
            },
        })

        telescope.load_extension('fzf')
    end,
    keys = {
        { '<C-P>', ':Telescope find_files hidden=true<CR>' },
        { '<C-G>', ':Telescope live_grep<CR>' },
        { '<C-B>', ':Telescope buffers<CR>' },
        { '<leader>fh', '<CMD>Telescope help_tags<CR>' }, -- Search help topics. Mnemonic: "fh for Find Help
    },
}
