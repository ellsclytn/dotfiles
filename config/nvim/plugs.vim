call plug#begin('~/.vim/plugged')

" Languages
Plug 'HerringtonDarkholme/yats.vim'
Plug 'jparise/vim-graphql'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'sheerun/vim-polyglot'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'aliou/bats.vim'
Plug 'mboughaba/i3config.vim'

" Autocomplete
Plug 'neoclide/coc.nvim', { 'branch': 'release' }

" Files
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf.vim'

" Auto mkdir
Plug 'travisjeffery/vim-auto-mkdir'

" Commenting
Plug 'tpope/vim-commentary'

" Whitespace/Alignment
Plug 'ntpeters/vim-better-whitespace'
Plug 'junegunn/vim-easy-align'

" Surroundings
Plug 'AndrewRadev/splitjoin.vim'
Plug 'rstacruz/vim-closer'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-surround'
Plug 'vim-scripts/blockle.vim' " Ruby blocks

" Linting/Gutter/Highlighting
Plug 'w0rp/ale'
Plug 'airblade/vim-gitgutter'
Plug 'editorconfig/editorconfig-vim'
Plug 'tpope/vim-fugitive'

" Status bar
Plug 'itchyny/lightline.vim'

" Words
Plug 'tpope/vim-abolish'
Plug 'christoomey/vim-sort-motion'

Plug 'jamessan/vim-gnupg'

" Colors
Plug 'joshdick/onedark.vim'

" Add plugins to &runtimepath
call plug#end()
