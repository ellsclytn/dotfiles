return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        local lualine = require('lualine')
        local navic = require('nvim-navic')

        lualine.setup({
            options = {
                globalstatus = true,
            },
            sections = {
                lualine_b = {
                    'branch',
                    'diff',
                    'diagnostics',
                    'navic',
                },
            },
        })
    end,
}
