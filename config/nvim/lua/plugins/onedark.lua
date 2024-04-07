return {
    'navarasu/onedark.nvim',
    lazy = false, -- the colorscheme should be available when starting Neovim
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
        local onedark = require('onedark')

        onedark.setup({
            style = 'dark',
            code_style = {
                comments = 'italic',
                keywords = 'none',
                functions = 'bold',
                strings = 'none',
                variables = 'none',
            },
        })

        onedark.load()
    end,
}
