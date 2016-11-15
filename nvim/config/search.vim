" Search
set ignorecase " Case insensitive search
set incsearch  " Makes search act like search in modern browsers
set hlsearch   " Highlight search results
let g:ctrlp_user_command = ['.git/', 'cd %s && git ls-files --cached --exclude-standard --others']

" Ignored directories
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

