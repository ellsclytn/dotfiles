return {
    'Wansmer/treesj',
    dependencies = { 'nvim-treesitter' },
    event = 'VeryLazy',
    config = function()
        require('treesj').setup()
    end,
}
