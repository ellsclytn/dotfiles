local timeout = 10 * 60000 -- 10 min

return {
    'nvim-treesitter/nvim-treesitter',
    branch = 'main',
    lazy = false,
    build = function()
        local ts = require('nvim-treesitter')
        ts.update():wait(timeout)
        ts.install({ 'stable', 'unstable' }):wait(timeout)
    end,
}
