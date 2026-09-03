return {
    'saghen/blink.cmp',
    dependencies = {
        'rafamadriz/friendly-snippets', -- optional: provides snippets for the snippet source
    },

    -- use a release tag to download pre-built binaries
    version = '1.*',

    ---@module 'blink.cmp'
    ---@type blink.cmp.Config
    opts = {
        keymap = { preset = 'enter' },
        completion = {
            list = {
                selection = {
                    preselect = false,
                },
            },
        },
        sources = {
            default = {
                'lazydev',
                'lsp',
                'buffer',
                'snippets',
                'path',
            },
            providers = {
                lazydev = {
                    name = 'LazyDev',
                    module = 'lazydev.integrations.blink',
                    score_offset = 50,
                },
            },
        },
    },
}
