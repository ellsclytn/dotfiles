return function()
    local onedark = require('onedark')

    onedark.setup({
        style = 'dark',
        code_style = {
            comments = 'italic',
            keywords = 'none',
            functions = 'bold',
            strings = 'none',
            variables = 'none',
        },
    })

    onedark.load()
end
