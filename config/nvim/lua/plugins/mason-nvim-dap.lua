return {
    'jay-babu/mason-nvim-dap.nvim',
    depends = {
        'mfussenegger/nvim-dap',
        { 'williamboman/mason.nvim', version = '^1.0.0' },
    },
    event = 'VeryLazy',
    opts = {
        handlers = {},
    },
}
