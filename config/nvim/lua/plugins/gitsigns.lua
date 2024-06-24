return {
    'lewis6991/gitsigns.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        require('gitsigns').setup({
            signs = {
                add = { text = '' },
                change = { text = '' },
                delete = { text = '' },
                topdelete = { text = '' },
                changedelete = { text = '' },
            },
            numhl = true,
        })
    end,
    event = 'BufReadPost',
}
