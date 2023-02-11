return function ()
    local telescope = require('telescope')

    telescope.setup({
        defaults = {
            vimgrep_arguments = {
                'rg',
                '--color=never',
                '--no-heading',
                '--with-filename',
                '--line-number',
                '--column',
                '--smart-case',
                '--hidden',
            },
            file_ignore_patterns = {
                'dist/.*',
                '%.git/.*',
                '%.vim/.*',
                'node_modules/.*',
            },
        },
    })

    telescope.load_extension('zf-native')
end
