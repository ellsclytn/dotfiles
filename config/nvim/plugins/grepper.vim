nnoremap <leader>g :Grepper -tool git<cr>
nnoremap <leader>G :Grepper -tool rg<cr>

" Optional. The default behaviour should work for most users.
let g:grepper           = {}
let g:grepper.tools     = ['rg', 'grep', 'git']
let g:grepper.jump      = 1
let g:grepper.next_tool = '<leader>g'
