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

" Linting
Plug 'scrooloose/syntastic'

" Add plugins to &runtimepath
call plug#end()

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor
  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" Ignored directories
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

" Search
set ignorecase " Case insensitive search
set incsearch  " Makes search act like search in modern browsers
set hlsearch   " Highlight search results

" Whitespace
set listchars=tab:▸\ ,trail:· " Show tabs, trailing whitespace and end of lines
set nowrap                    " Do not wrap lines
set expandtab                 " Use spaces instead of tabs
set smarttab                  " Be smart when using tabs ;-)
set softtabstop=2             " 1 tab is 2 spaces
set shiftwidth=2
set tabstop=2
set foldmethod=indent         " Fold based on indentation.
set foldlevelstart=99         " Expand all folds by default.
set backspace=2

" Window
syntax enable       " Syntax highlighting
set hidden          " Allow hiding buffers with unsaved changes
set number          " Show line numbers
set ruler           " Show cursor position
set spelllang=en_au " Australian English

" Persistent undo
set undofile                " Save undos after file closes
set undodir=$HOME/.vim/undo " Where to save histories
set undolevels=1000         " How many undos
set undoreload=10000        " Number of lines to save

" Linting
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_javascript_checkers = ['eslint']

let g:syntastic_error_symbol = '❌'
let g:syntastic_style_error_symbol = '⁉️'
let g:syntastic_warning_symbol = '⚠️'
let g:syntastic_style_warning_symbol = '💩'

highlight link SyntasticErrorSign SignColumn
highlight link SyntasticWarningSign SignColumn
highlight link SyntasticStyleErrorSign SignColumn
highlight link SyntasticStyleWarningSign SignColumn

set background=dark
colorscheme Tomorrow-Night-Bright

