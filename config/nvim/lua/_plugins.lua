return require('packer').startup(function()
    use('wbthomason/packer.nvim')

    -- UI & Syntax
    use('editorconfig/editorconfig-vim')
    use('lukas-reineke/indent-blankline.nvim')
    use('natecraddock/telescope-zf-native.nvim')
    use('navarasu/onedark.nvim')
    use('nvim-treesitter/nvim-treesitter')
    use('tpope/vim-fugitive') -- Git
    use({ 'SmiteshP/nvim-gps' })
    use({ 'kyazdani42/nvim-tree.lua', requires = { 'kyazdani42/nvim-web-devicons' } })
    use({ 'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' } })
    use({ 'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons' } })
    use({ 'nvim-telescope/telescope.nvim', requires = { 'nvim-lua/plenary.nvim' } })
    use({ 'windwp/nvim-spectre', requires = { 'nvim-lua/plenary.nvim' } }) -- Search UI

    -- Text operations
    use('AndrewRadev/splitjoin.vim')
    use('christoomey/vim-sort-motion')
    use('ntpeters/vim-better-whitespace')
    use('rstacruz/vim-closer')
    use('tpope/vim-abolish')
    use('tpope/vim-commentary')
    use('tpope/vim-surround')

    -- Completion engine
    use('L3MON4D3/LuaSnip')
    use('hrsh7th/cmp-buffer')
    use('hrsh7th/cmp-cmdline')
    use('hrsh7th/cmp-nvim-lsp')
    use('hrsh7th/cmp-path')
    use('hrsh7th/nvim-cmp')
    use('jose-elias-alvarez/null-ls.nvim')
    use('neovim/nvim-lspconfig')
    use('onsails/lspkind-nvim')
    use('saadparwaiz1/cmp_luasnip')
    use('williamboman/nvim-lsp-installer')
end)
