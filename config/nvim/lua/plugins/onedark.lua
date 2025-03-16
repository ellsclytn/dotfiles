return {
    'olimorris/onedarkpro.nvim',
    lazy = false, -- the colorscheme should be available when starting Neovim
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function(_, opts)
        local onedarkpro = require('onedarkpro')
        onedarkpro.setup(opts)

        onedarkpro.load()
    end,
}
