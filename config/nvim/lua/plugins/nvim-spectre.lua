return { -- Search UI
    'nvim-pack/nvim-spectre',
    dependencies = { 'nvim-lua/plenary.nvim' },
    keys = {
        {
            '<leader>S',
            function()
                require('spectre').open()
            end,
        },
        {
            '<leader>sw',
            function()
                require('spectre').open_visual({ select_word = true })
            end,
        },
        {
            '<leader>s',
            function()
                require('spectre').open_visual()
            end,
            mode = 'v',
        },
        {
            '<leader>sp',
            function()
                require('spectre').open_file_search()
            end,
        },
    },
}
