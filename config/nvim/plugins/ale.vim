let g:ale_linters = {
\  'html': [],
\  'javascript': ['eslint'],
\  'typescript': ['eslint'],
\  'typescriptreact': ['eslint'],
\  'yaml': ['yamllint'],
\}

let g:ale_fixers = {
\  'javascript': ['prettier', 'eslint'],
\  'typescript': ['prettier', 'eslint'],
\  'typescriptreact': ['prettier', 'eslint']
\}

let g:ale_fix_on_save = 1
let g:ale_sign_column_always = 1
