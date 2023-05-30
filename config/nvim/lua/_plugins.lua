return {
    --
    -- UI & Syntax
    --
    {
        'navarasu/onedark.nvim',
        lazy = false, -- the colorscheme should be available when starting Neovim
        priority = 1000, -- make sure to load this before all the other start plugins
        config = require('_onedark'),
    },
    {
        'lukas-reineke/indent-blankline.nvim',
        event = 'VeryLazy',
    },
    {
        'zbirenbaum/copilot-cmp',
        event = 'InsertEnter',
        config = function()
            require('copilot_cmp').setup()
        end,
    },
    {
        'zbirenbaum/copilot.lua',
        event = 'InsertEnter',
        config = function()
            require('copilot').setup({
                suggestion = { enabled = false },
                panel = { enabled = false },
            })
        end,
    },
    {
        'tpope/vim-fugitive', -- Git
        event = 'VeryLazy',
    },
    {
        'tpope/vim-rhubarb',
        event = 'VeryLazy',
    },
    {
        'nvim-treesitter/nvim-treesitter',
        config = require('_treesitter'),
        event = { 'BufReadPost', 'BufWritePost' },
    },
    {
        'nvim-tree/nvim-tree.lua',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        keys = {
            { '<C-N>', ':NvimTreeToggle<CR>' },
            { '<C-F>', ':NvimTreeFindFile<CR>' },
        },
        config = require('_nvim-tree'),
    },
    {
        'lewis6991/gitsigns.nvim',
        dependencies = { 'nvim-lua/plenary.nvim' },
        config = require('_gitsigns'),
        event = 'BufReadPost',
    },
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = require('_statusline'),
    },
    {
        'nvim-telescope/telescope.nvim',
        dependencies = {
            'nvim-lua/plenary.nvim',
            { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
        },
        config = require('_telescope'),
        keys = {
            { '<C-P>', ':Telescope find_files hidden=true<CR>' },
            { '<C-G>', ':Telescope live_grep<CR>' },
            { '<C-B>', ':Telescope buffers<CR>' },
            { '<leader>fh', '<CMD>Telescope help_tags<CR>' }, -- Search help topics. Mnemonic: "fh for Find Help
        },
    },
    { -- Search UI
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
    },

    -- Text operations
    {
        'Wansmer/treesj',
        dependencies = { 'nvim-treesitter' },
        event = 'VeryLazy',
        config = function()
            require('treesj').setup()
        end,
    },
    'christoomey/vim-sort-motion',
    {
        'ntpeters/vim-better-whitespace',
        event = 'InsertEnter',
        config = require('_vim-better-whitespace'),
    },
    'tpope/vim-abolish',
    {
        'numToStr/Comment.nvim',
        event = 'VeryLazy',
        config = function()
            require('Comment').setup()
        end,
    },
    {
        'kylechui/nvim-surround',
        version = '*', -- Use for stability; omit to use `main` branch for the latest features
        event = 'VeryLazy',
        config = function()
            require('nvim-surround').setup({})
        end,
    },
    {
        'windwp/nvim-autopairs',
        config = function()
            require('nvim-autopairs').setup({})
        end,
        event = { 'BufReadPost', 'BufModifiedSet' },
    },
    {
        'folke/trouble.nvim',
        dependencies = 'nvim-tree/nvim-web-devicons',
        keys = {
            { '<leader>xx', '<cmd>Trouble<cr>' },
            { '<leader>xw', '<cmd>Trouble workspace_diagnostics<cr>' },
            { '<leader>xd', '<cmd>Trouble document_diagnostics<cr>' },
            { '<leader>xl', '<cmd>Trouble loclist<cr>' },
            { '<leader>xq', '<cmd>Trouble quickfix<cr>' },
            { 'gR', '<cmd>Trouble lsp_references<cr>' },
        },
    },

    {
        'hrsh7th/nvim-cmp',
        event = 'VeryLazy',
        dependencies = {
            'L3MON4D3/LuaSnip',
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-cmdline',
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-path',
            'jose-elias-alvarez/null-ls.nvim',
            'neovim/nvim-lspconfig',
            'onsails/lspkind-nvim',
            'saadparwaiz1/cmp_luasnip',
            'williamboman/mason-lspconfig.nvim',
            'williamboman/mason.nvim',
        },
        config = require('_lsp'),
    },
    {
        'SmiteshP/nvim-navic',
        dependencies = { 'neovim/nvim-lspconfig' },
    },
}
