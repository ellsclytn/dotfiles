return require('packer').startup(function()
    use 'wbthomason/packer.nvim'

    -- UI & Syntax
    use 'navarasu/onedark.nvim'
    use 'nvim-treesitter/nvim-treesitter'
    use 'tpope/vim-fugitive' -- Git
    use {'nvim-telescope/telescope.nvim', requires = {'nvim-lua/plenary.nvim'}}
    use {'lewis6991/gitsigns.nvim', requires = {'nvim-lua/plenary.nvim'}}
    use {'kyazdani42/nvim-tree.lua', requires = {'kyazdani42/nvim-web-devicons'}}
    use {'echasnovski/mini.nvim', branch = 'stable'}

    -- Text operations
    use 'AndrewRadev/splitjoin.vim'
    use 'christoomey/vim-sort-motion'
    use 'rstacruz/vim-closer'
    use 'tpope/vim-commentary'
    use 'tpope/vim-endwise'
    use 'tpope/vim-surround'

    -- Completion engine
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/nvim-cmp'
    use 'neovim/nvim-lspconfig'
    use 'onsails/lspkind-nvim'
    use 'williamboman/nvim-lsp-installer'
end)
