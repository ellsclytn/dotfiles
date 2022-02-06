local present, onedark = pcall(require, 'onedark')
if present then
    onedark.setup {
        style = 'dark',
        code_style = {
            comments = 'italic',
            keywords = 'none', 
            functions = 'bold',
            strings = 'none',
            variables = 'none'
        }
    }
    require('onedark').load()
end
