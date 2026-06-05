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
