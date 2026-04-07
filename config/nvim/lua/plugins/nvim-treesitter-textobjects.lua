return {
    'nvim-treesitter/nvim-treesitter-textobjects',
    branch = 'main',
    init = function()
        vim.g.no_plugin_maps = true
    end,
    config = function()
        require('nvim-treesitter-textobjects').setup({
            select = {
                -- Automatically jump forward to textobj, similar to targets.vim
                lookahead = true,

                selection_modes = {
                    ['@function.outer'] = 'v',
                    ['@function.inner'] = 'v',
                },

                include_surrounding_whitespace = false,
            },
        })
    end,
}
