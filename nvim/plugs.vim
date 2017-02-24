call plug#begin('~/.vim/plugged')

" Syntax Highlighers
Plug 'sheerun/vim-polyglot'

" Emmet
Plug 'mattn/emmet-vim'

" Files
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mhinz/vim-grepper'
Plug 'scrooloose/nerdtree'

" Auto mkdir
Plug 'travisjeffery/vim-auto-mkdir'

" Colors
Plug 'nanotech/jellybeans.vim'

" Commenting
Plug 'tpope/vim-commentary'

" Whitespace/Alignment
Plug 'ntpeters/vim-better-whitespace'
Plug 'junegunn/vim-easy-align'

" Autocompletions
Plug 'jiangmiao/auto-pairs'

" Surroundings
Plug 'tpope/vim-surround'

" Linting/Gutter/Highlighting
Plug 'w0rp/ale'
Plug 'airblade/vim-gitgutter'
Plug 'chrisbra/Colorizer'

" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'

" Words
Plug 'tpope/vim-abolish'

" Add plugins to &runtimepath
call plug#end()

