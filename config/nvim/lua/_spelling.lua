-- Australian English for spell checking
vim.opt.spelllang = 'en_au'

-- Enable spellcheck on markdown and commit messages
vim.cmd([[
augroup DefaultSpellChecking
    autocmd! * <buffer>
    autocmd FileType markdown setlocal spell
    autocmd FileType gitcommit setlocal spell
augroup END
]])
