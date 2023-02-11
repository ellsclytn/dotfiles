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

    'editorconfig/editorconfig-vim',
    'lukas-reineke/indent-blankline.nvim',
    'tpope/vim-fugitive', -- Git
    'tpope/vim-rhubarb',

    {
        'nvim-treesitter/nvim-treesitter',
        config = require('_treesitter'),
    },
    {
        'nvim-tree/nvim-tree.lua',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        lazy = false,
        config = require('_nvim-tree'),
    },
    {
        'lewis6991/gitsigns.nvim',
        dependencies = { 'nvim-lua/plenary.nvim' },
        config = require('_gitsigns'),
    },
    {
        'nvim-lualine/lualine.nvim',
        dependencies = {
            'nvim-tree/nvim-web-devicons',
            'SmiteshP/nvim-gps',
        },
        config = require('_statusline'),
    },
    {
        'nvim-telescope/telescope.nvim',
        dependencies = {
            'nvim-lua/plenary.nvim',
            'natecraddock/telescope-zf-native.nvim',
        },
        config = require('_telescope'),
    },
    { -- Search UI
        'nvim-pack/nvim-spectre',
        dependencies = { 'nvim-lua/plenary.nvim' },
    },

    -- Text operations
    'AndrewRadev/splitjoin.vim',
    'christoomey/vim-sort-motion',
    {
        'ntpeters/vim-better-whitespace',
        event = 'BufEnter',
        config = require('_vim-better-whitespace'),
    },
    'tpope/vim-abolish',
    'tpope/vim-commentary',
    'tpope/vim-surround',
    {
        'windwp/nvim-autopairs',
        config = function()
            require('nvim-autopairs').setup({})
        end,
    },
    {
        'folke/trouble.nvim',
        dependencies = 'nvim-tree/nvim-web-devicons',
        config = function()
            require('trouble').setup({})
        end,
    },

    {
        'hrsh7th/nvim-cmp',
        event = 'BufEnter',
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
}
