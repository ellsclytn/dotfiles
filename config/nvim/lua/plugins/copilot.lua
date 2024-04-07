return {
    'zbirenbaum/copilot.lua',
    event = 'InsertEnter',
    config = function()
        require('copilot').setup({
            suggestion = { enabled = false },
            panel = { enabled = false },
            filetypes = {
                -- disable for files without filetype, such as a new buffer
                [''] = false,
                gitcommit = false,
                markdown = false,
                text = false,
                sh = function()
                    if string.match(vim.fs.basename(vim.api.nvim_buf_get_name(0)), '%.env.*') then
                        -- disable for .env files
                        print('copilot disabled for .env files')
                        return false
                    end

                    return true
                end,
            },
        })
    end,
}
