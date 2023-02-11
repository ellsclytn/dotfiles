return function()
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
                { navic.get_location, cond = navic.is_available },
            },
        },
    })
end
