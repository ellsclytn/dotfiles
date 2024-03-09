-- TODO: Switch to `vim.filetype.add` once nvim v0.10 is released.
vim.cmd([[
augroup filetypedetect
  au! BufRead,BufNewFile */X11/*.conf setf xf86conf
augroup END
]])

vim.filetype.add({
    extension = {
        i3config = 'i3config',
        tf = 'terraform',
    },
    pattern = {
        ['.*envrc.*'] = 'sh',
        ['.*gitconfig.*'] = 'gitconfig',
        ['.*/ansible/.*.ya?ml'] = 'yaml.ansible',
    },
})
