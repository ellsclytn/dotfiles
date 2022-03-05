vim.cmd([[
augroup filetypedetect
  au! BufRead,BufNewFile */ansible/*.yml setf yaml.ansible
augroup END
]])
