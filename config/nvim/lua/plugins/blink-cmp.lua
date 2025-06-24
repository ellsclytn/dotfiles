return {
    'saghen/blink.cmp',
    dependencies = {
        'rafamadriz/friendly-snippets', -- optional: provides snippets for the snippet source
        'fang2hou/blink-copilot',
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
                'copilot',
                'lazydev',
                'lsp',
                'buffer',
                'snippets',
                'path',
            },
            providers = {
                copilot = {
                    name = 'copilot',
                    module = 'blink-copilot',
                    score_offset = 100,
                    async = true,
                },
                lazydev = {
                    name = 'LazyDev',
                    module = 'lazydev.integrations.blink',
                    score_offset = 50,
                },
            },
        },
    },
}
