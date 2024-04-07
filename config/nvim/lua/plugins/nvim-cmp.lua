return {
    'hrsh7th/nvim-cmp',
    event = 'VeryLazy',
    dependencies = {
        'L3MON4D3/LuaSnip',
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-cmdline',
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-path',
        'neovim/nvim-lspconfig',
        'onsails/lspkind-nvim',
        'saadparwaiz1/cmp_luasnip',
        'williamboman/mason-lspconfig.nvim',
        'williamboman/mason.nvim',
    },
    config = require('_lsp'),
}
