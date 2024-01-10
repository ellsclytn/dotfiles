vim.cmd([[
augroup filetypedetect
  au! BufRead,BufNewFile */ansible/*.yml setf yaml.ansible
  au! BufRead,BufNewFile *.envrc setf sh
augroup END
]])

vim.filetype.add({ extension = { tf = 'terraform' } })
