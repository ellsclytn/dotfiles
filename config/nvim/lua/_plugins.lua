return require('packer').startup(function()
    use 'wbthomason/packer.nvim'

    -- UI & Syntax
    use 'editorconfig/editorconfig-vim'
    use 'navarasu/onedark.nvim'
    use 'nvim-treesitter/nvim-treesitter'
    use 'tpope/vim-fugitive' -- Git
    use {'SmiteshP/nvim-gps'}
    use {'kyazdani42/nvim-tree.lua', requires = {'kyazdani42/nvim-web-devicons'}}
    use {'lewis6991/gitsigns.nvim', requires = {'nvim-lua/plenary.nvim'}}
    use {'nvim-lualine/lualine.nvim', requires = {'kyazdani42/nvim-web-devicons'}}
    use {'nvim-telescope/telescope.nvim', requires = {'nvim-lua/plenary.nvim'}}
    use {'windwp/nvim-spectre', requires = {'nvim-lua/plenary.nvim'}} -- Search UI

    -- Text operations
    use 'AndrewRadev/splitjoin.vim'
    use 'christoomey/vim-sort-motion'
    use 'rstacruz/vim-closer'
    use 'tpope/vim-commentary'
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
