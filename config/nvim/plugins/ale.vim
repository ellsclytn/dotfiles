let g:ale_linters = {
\  'html': [],
\  'javascript': ['eslint'],
\  'terraform': ['tflint'],
\  'typescript': ['eslint'],
\  'typescriptreact': ['eslint'],
\  'yaml': ['yamllint'],
\}

let g:ale_fixers = {
\  'javascript': ['prettier', 'eslint'],
\  'typescript': ['prettier', 'eslint'],
\  'rust': ['rustfmt'],
\  'terraform': ['terraform'],
\  'typescriptreact': ['prettier', 'eslint'],
\}

let g:ale_fix_on_save = 1
let g:ale_sign_column_always = 1
