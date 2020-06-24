call plug#begin('~/.vim/plugged')

" Languages
Plug 'HerringtonDarkholme/yats.vim'
Plug 'jparise/vim-graphql'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'sheerun/vim-polyglot'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

" Autocomplete
Plug 'neoclide/coc.nvim', { 'branch': 'release' }

" Emmet
Plug 'mattn/emmet-vim'

" Files
Plug 'mhinz/vim-grepper'
Plug 'scrooloose/nerdtree'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

" Auto mkdir
Plug 'travisjeffery/vim-auto-mkdir'

" Commenting
Plug 'tpope/vim-commentary'

" Whitespace/Alignment
Plug 'ntpeters/vim-better-whitespace'
Plug 'junegunn/vim-easy-align'

" Autocompletions
Plug 'jiangmiao/auto-pairs'

" Surroundings
Plug 'tpope/vim-surround'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'vim-scripts/blockle.vim' " Ruby blocks

" Linting/Gutter/Highlighting
Plug 'w0rp/ale'
Plug 'airblade/vim-gitgutter'
Plug 'chrisbra/Colorizer'
Plug 'editorconfig/editorconfig-vim'

" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'

" Words
Plug 'tpope/vim-abolish'
Plug 'junegunn/vim-emoji'
Plug 'christoomey/vim-sort-motion'

Plug 'jamessan/vim-gnupg'

" Colors
Plug 'joshdick/onedark.vim'

" Add plugins to &runtimepath
call plug#end()
