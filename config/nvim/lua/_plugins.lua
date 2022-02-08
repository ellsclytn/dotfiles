return require('packer').startup(function()
    use 'wbthomason/packer.nvim'

    -- UI & Syntax
    use 'navarasu/onedark.nvim'
    use 'nvim-treesitter/nvim-treesitter'
    use {'nvim-telescope/telescope.nvim', requires = {'nvim-lua/plenary.nvim'}}
    use {'lewis6991/gitsigns.nvim', requires = {'nvim-lua/plenary.nvim'}}
    use {'kyazdani42/nvim-tree.lua', requires = {'kyazdani42/nvim-web-devicons'}}
    use {'echasnovski/mini.nvim', branch = 'stable'}

    -- Text operations
    use 'AndrewRadev/splitjoin.vim'
    use 'rstacruz/vim-closer'
    use 'tpope/vim-commentary'
    use 'tpope/vim-endwise'
    use 'tpope/vim-surround'
end)
