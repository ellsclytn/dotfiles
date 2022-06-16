local present, lualine = pcall(require, 'lualine')
if present then
    local gps = require('nvim-gps')
    gps.setup()

    lualine.setup({
        options = {
            globalstatus = true,
        },
        sections = {
            lualine_b = {
                'branch',
                'diff',
                'diagnostics',
                { gps.get_location, cond = gps.is_available },
            },
        },
    })
end
