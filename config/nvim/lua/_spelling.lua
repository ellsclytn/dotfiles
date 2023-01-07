-- Australian English for spell checking
vim.opt.spelllang = 'en_au'

local spellchecked_filetypes = { 'gitcommit', 'markdown' }

vim.api.nvim_create_autocmd({ 'FileType' }, {
    group = vim.api.nvim_create_augroup('DefaultSpellChecking', { clear = true }),
    callback = function(opts)
        local active_filetype = vim.bo[opts.buf].filetype

        for _, t in pairs(spellchecked_filetypes) do
            if t == active_filetype then
                vim.opt_local.spell = true
                break
            end
        end
    end,
})
