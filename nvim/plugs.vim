call plug#begin('~/.vim/plugged')

" Syntax Highlighers
Plug 'sheerun/vim-polyglot'

" Emmet
Plug 'mattn/emmet-vim'

" Fuzzy finder for files
Plug 'ctrlpvim/ctrlp.vim'

" Colors
Plug 'chriskempson/vim-tomorrow-theme'

" Commenting
Plug 'tpope/vim-commentary'

" Whitespace/Alignment
Plug 'ntpeters/vim-better-whitespace'
Plug 'junegunn/vim-easy-align'

" Surroundings
Plug 'tpope/vim-surround'

" Linting/Gutter
Plug 'scrooloose/syntastic'
Plug 'airblade/vim-gitgutter'

" Add plugins to &runtimepath
call plug#end()

